package edu.kit.aifb.cumulus.test.framework.runners;

import io.teknek.farsandra.Farsandra;
import io.teknek.farsandra.LineHandler;

import java.util.Arrays;
import java.util.concurrent.CountDownLatch;

/**
 * CumulusRDF test facility for running Cassandra.
 * 
 * @author Andrea Gazzarini
 * @since 1.1.0
 */
public abstract class CassandraRunner implements StorageRunner {
	
	private Farsandra _cassandra;

	@Override
	public void start() throws Exception {
		
		final String version = getCassandraVersion();

		_cassandra = new Farsandra()
			.withVersion(version)
			.withCleanInstanceOnStart(true)
			.withInstanceName("target/cassandra-" + version)
			.withCleanInstanceOnStart(true)
			.withCreateConfigurationFiles(true)
			.withHost("localhost")
			.withSeeds(Arrays.asList("localhost"));		
		
		final CountDownLatch started = new CountDownLatch(1);

		_cassandra.getManager().addOutLineHandler(new LineHandler() {
			@Override
			public void handleLine(final String line) {
				if (line.contains("Listening for thrift clients...")) {
					started.countDown();
				}
			}
		});
		
		_cassandra.getManager().addErrLineHandler(new LineHandler() {
			@Override
			public void handleLine(final String line) {
				// TODO including cumulusrdf-core leads to a cyclic dependency. So
				// how do we manage logging?
				System.out.println(line);
			}
		});

		_cassandra.start();
		started.await();
		System.err.close();
	}

	@Override
	public void stop() {
		try {
			_cassandra.getManager().destroyAndWaitForShutdown(30);
		} catch (final InterruptedException exception) {
			// Nothing to be done here...
		}
	}

	/**
	 * Concrete Cassandra runners must specify the requested version.
	 * 
	 * @return the version of Cassandra that this runner has to manage.
	 */
	protected abstract String getCassandraVersion();
}

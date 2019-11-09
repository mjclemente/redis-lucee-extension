component {

	this.name = 'lucee.redis.app';
	this.applicationtimeout = createTimeSpan(0,1,0,0);
  this.sessionmanagement = true;
  this.sessiontimeout = createTimeSpan(0,0,5,0);
  this.sessioncluster = true;
  this.sessionstorage = 'sessions';
  this.setdomaincookies = true;
  this.sessioncookie = {
    "httpOnly": true
  }

  public boolean function onApplicationStart() {
    return true;
  }

  public void function onApplicationEnd(struct applicationScope={}) {
    return;
  }

  public void function onSessionStart() {
    session['start'] = now();
    return;
  }

  public boolean function onRequestStart(required string targetPage) {
    session['elapsed'] = session.start.diff( 's', now() );

    cachePut( id = 'Wocket', value = 'Pocket', region = 'object' );
    cachePut( id = 'Woset', value = 'Closet', region = 'object' );
    cachePut( id = 'Yottle', value = 'Bottle', region = 'object' );
    cachePut( id = 'Zillow', value = 'Pillow', region = 'object' );

    return true;
  }

  public void function onRequest(required string targetPage) {
    include arguments.targetPage;
    return;
  }

  public void function onRequestEnd() {
    // sessionInvalidate();
    return;
  }

}
component {

    this.name = hash( getCurrentTemplatePath() );
    this.applicationTimeout = CreateTimeSpan(10, 0, 0, 0); //10 days
    //this.datasource = "NONE";
    this.sessionManagement = true;
    this.sessionTimeout = CreateTimeSpan(0, 0, 30, 0); //30 minutes
    function onApplicationStart() {
        return true;
    }

    function onSessionStart() {}

    // the target page is passed in for reference,
    // but you are not required to include it
    function onRequestStart( string targetPage ) {
        request.ApplicationName="Star Wars API ColdFusion";
        request.PageName="";
    }

    function onRequest( string targetPage ) {
        include arguments.targetPage;
    }

    function onRequestEnd() {
    }

    function onSessionEnd( struct SessionScope, struct ApplicationScope ) {}

    function onApplicationEnd( struct ApplicationScope ) {}

    function onError( any Exception, string EventName ) {}

}
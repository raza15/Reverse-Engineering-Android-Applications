.class public Lcom/phonegap/NetworkListener;
.super Ljava/lang/Object;
.source "NetworkListener.java"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private cLoc:Landroid/location/Location;

.field private hasData:Z

.field private mCtx:Lcom/phonegap/api/PhonegapActivity;

.field private mLocMan:Landroid/location/LocationManager;

.field private owner:Lcom/phonegap/GeoListener;

.field private running:Z


# direct methods
.method public constructor <init>(Lcom/phonegap/api/PhonegapActivity;ILcom/phonegap/GeoListener;)V
    .locals 3
    .param p1, "ctx"    # Lcom/phonegap/api/PhonegapActivity;
    .param p2, "interval"    # I
    .param p3, "m"    # Lcom/phonegap/GeoListener;

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v2, p0, Lcom/phonegap/NetworkListener;->hasData:Z

    .line 26
    iput-boolean v2, p0, Lcom/phonegap/NetworkListener;->running:Z

    .line 37
    iput-object p3, p0, Lcom/phonegap/NetworkListener;->owner:Lcom/phonegap/GeoListener;

    .line 38
    iput-object p1, p0, Lcom/phonegap/NetworkListener;->mCtx:Lcom/phonegap/api/PhonegapActivity;

    .line 39
    iget-object v0, p0, Lcom/phonegap/NetworkListener;->mCtx:Lcom/phonegap/api/PhonegapActivity;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lcom/phonegap/api/PhonegapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/phonegap/NetworkListener;->mLocMan:Landroid/location/LocationManager;

    .line 40
    iput-boolean v2, p0, Lcom/phonegap/NetworkListener;->running:Z

    .line 41
    invoke-virtual {p0, p2}, Lcom/phonegap/NetworkListener;->start(I)V

    .line 42
    return-void
.end method


# virtual methods
.method public getLocation()Landroid/location/Location;
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/phonegap/NetworkListener;->mLocMan:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/phonegap/NetworkListener;->cLoc:Landroid/location/Location;

    .line 51
    iget-object v0, p0, Lcom/phonegap/NetworkListener;->cLoc:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phonegap/NetworkListener;->hasData:Z

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/phonegap/NetworkListener;->cLoc:Landroid/location/Location;

    return-object v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 103
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "NetworkListener: The location has been updated!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phonegap/NetworkListener;->hasData:Z

    .line 105
    iput-object p1, p0, Lcom/phonegap/NetworkListener;->cLoc:Landroid/location/Location;

    .line 109
    iget-object v0, p0, Lcom/phonegap/NetworkListener;->owner:Lcom/phonegap/GeoListener;

    iget-object v0, v0, Lcom/phonegap/GeoListener;->mGps:Lcom/phonegap/GpsListener;

    invoke-virtual {v0}, Lcom/phonegap/GpsListener;->hasLocation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/phonegap/NetworkListener;->owner:Lcom/phonegap/GeoListener;

    invoke-virtual {v0, p1}, Lcom/phonegap/GeoListener;->success(Landroid/location/Location;)V

    .line 112
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 63
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkListener: The provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 72
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkListener: The provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is enabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 85
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkListener: The status of the provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has changed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    if-nez p2, :cond_0

    .line 87
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is OUT OF SERVICE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    :goto_0
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 90
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is TEMPORARILY_UNAVAILABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is Available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public start(I)V
    .locals 6
    .param p1, "interval"    # I

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/phonegap/NetworkListener;->running:Z

    if-nez v0, :cond_0

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phonegap/NetworkListener;->running:Z

    .line 122
    iget-object v0, p0, Lcom/phonegap/NetworkListener;->mLocMan:Landroid/location/LocationManager;

    const-string v1, "network"

    int-to-long v2, p1

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 123
    invoke-virtual {p0}, Lcom/phonegap/NetworkListener;->getLocation()Landroid/location/Location;

    .line 126
    iget-boolean v0, p0, Lcom/phonegap/NetworkListener;->hasData:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phonegap/NetworkListener;->owner:Lcom/phonegap/GeoListener;

    iget-object v0, v0, Lcom/phonegap/GeoListener;->mGps:Lcom/phonegap/GpsListener;

    invoke-virtual {v0}, Lcom/phonegap/GpsListener;->hasLocation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/phonegap/NetworkListener;->owner:Lcom/phonegap/GeoListener;

    iget-object v1, p0, Lcom/phonegap/NetworkListener;->cLoc:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lcom/phonegap/GeoListener;->success(Landroid/location/Location;)V

    .line 130
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/phonegap/NetworkListener;->running:Z

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/phonegap/NetworkListener;->mLocMan:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 139
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phonegap/NetworkListener;->running:Z

    .line 140
    return-void
.end method

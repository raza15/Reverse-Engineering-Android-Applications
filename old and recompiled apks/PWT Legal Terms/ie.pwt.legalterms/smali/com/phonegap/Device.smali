.class public Lcom/phonegap/Device;
.super Lcom/phonegap/api/Plugin;
.source "Device.java"


# static fields
.field public static phonegapVersion:Ljava/lang/String;

.field public static platform:Ljava/lang/String;

.field public static uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "0.9.5"

    sput-object v0, Lcom/phonegap/Device;->phonegapVersion:Ljava/lang/String;

    .line 22
    const-string v0, "Android"

    sput-object v0, Lcom/phonegap/Device;->platform:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/phonegap/api/Plugin;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lcom/phonegap/api/PluginResult;
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackId"    # Ljava/lang/String;

    .prologue
    .line 51
    sget-object v3, Lcom/phonegap/api/PluginResult$Status;->OK:Lcom/phonegap/api/PluginResult$Status;

    .line 52
    .local v3, "status":Lcom/phonegap/api/PluginResult$Status;
    const-string v2, ""

    .line 55
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    const-string v4, "getDeviceInfo"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 56
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 57
    .local v1, "r":Lorg/json/JSONObject;
    const-string v4, "uuid"

    sget-object v5, Lcom/phonegap/Device;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v4, "version"

    invoke-virtual {p0}, Lcom/phonegap/Device;->getOSVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    const-string v4, "platform"

    sget-object v5, Lcom/phonegap/Device;->platform:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    const-string v4, "name"

    invoke-virtual {p0}, Lcom/phonegap/Device;->getProductName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string v4, "phonegap"

    sget-object v5, Lcom/phonegap/Device;->phonegapVersion:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    new-instance v4, Lcom/phonegap/api/PluginResult;

    invoke-direct {v4, v3, v1}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 69
    .end local v1    # "r":Lorg/json/JSONObject;
    :goto_0
    return-object v4

    .line 67
    :cond_0
    new-instance v4, Lcom/phonegap/api/PluginResult;

    invoke-direct {v4, v3, v2}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 69
    .local v0, "e":Lorg/json/JSONException;
    new-instance v4, Lcom/phonegap/api/PluginResult;

    sget-object v5, Lcom/phonegap/api/PluginResult$Status;->JSON_EXCEPTION:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v4, v5}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;)V

    goto :goto_0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 120
    .local v0, "model":Ljava/lang/String;
    return-object v0
.end method

.method public getOSVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 135
    .local v0, "osversion":Ljava/lang/String;
    return-object v0
.end method

.method public getPhonegapVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/phonegap/Device;->phonegapVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/phonegap/Device;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 125
    .local v0, "productname":Ljava/lang/String;
    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 140
    .local v0, "sdkversion":Ljava/lang/String;
    return-object v0
.end method

.method public getTimeZoneID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 146
    .local v0, "tz":Ljava/util/TimeZone;
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getUuid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 105
    iget-object v1, p0, Lcom/phonegap/Device;->ctx:Lcom/phonegap/api/PhonegapActivity;

    invoke-virtual {v1}, Lcom/phonegap/api/PhonegapActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "uuid":Ljava/lang/String;
    return-object v0
.end method

.method public isSynch(Ljava/lang/String;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 80
    const-string v0, "getDeviceInfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x1

    .line 83
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContext(Lcom/phonegap/api/PhonegapActivity;)V
    .locals 1
    .param p1, "ctx"    # Lcom/phonegap/api/PhonegapActivity;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/phonegap/api/Plugin;->setContext(Lcom/phonegap/api/PhonegapActivity;)V

    .line 39
    invoke-virtual {p0}, Lcom/phonegap/Device;->getUuid()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phonegap/Device;->uuid:Ljava/lang/String;

    .line 40
    return-void
.end method

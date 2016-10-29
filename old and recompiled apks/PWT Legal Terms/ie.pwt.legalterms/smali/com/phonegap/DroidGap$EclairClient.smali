.class public Lcom/phonegap/DroidGap$EclairClient;
.super Lcom/phonegap/DroidGap$GapClient;
.source "DroidGap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phonegap/DroidGap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EclairClient"
.end annotation


# instance fields
.field private MAX_QUOTA:J

.field private TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/phonegap/DroidGap;


# direct methods
.method public constructor <init>(Lcom/phonegap/DroidGap;Landroid/content/Context;)V
    .locals 2
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 916
    iput-object p1, p0, Lcom/phonegap/DroidGap$EclairClient;->this$0:Lcom/phonegap/DroidGap;

    .line 917
    invoke-direct {p0, p1, p2}, Lcom/phonegap/DroidGap$GapClient;-><init>(Lcom/phonegap/DroidGap;Landroid/content/Context;)V

    .line 908
    const-string v0, "PhoneGapLog"

    iput-object v0, p0, Lcom/phonegap/DroidGap$EclairClient;->TAG:Ljava/lang/String;

    .line 909
    const-wide/32 v0, 0x6400000

    iput-wide v0, p0, Lcom/phonegap/DroidGap$EclairClient;->MAX_QUOTA:J

    .line 918
    return-void
.end method


# virtual methods
.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "lineNumber"    # I
    .param p3, "sourceID"    # Ljava/lang/String;

    .prologue
    .line 956
    iget-object v0, p0, Lcom/phonegap/DroidGap$EclairClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    return-void
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "databaseIdentifier"    # Ljava/lang/String;
    .param p3, "currentQuota"    # J
    .param p5, "estimatedSize"    # J
    .param p7, "totalUsedQuota"    # J
    .param p9, "quotaUpdater"    # Landroid/webkit/WebStorage$QuotaUpdater;

    .prologue
    .line 934
    iget-object v2, p0, Lcom/phonegap/DroidGap$EclairClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event raised onExceededDatabaseQuota estimatedSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " currentQuota: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " totalUsedQuota: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p7, p8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    iget-wide v2, p0, Lcom/phonegap/DroidGap$EclairClient;->MAX_QUOTA:J

    cmp-long v2, p5, v2

    if-gez v2, :cond_0

    .line 939
    move-wide v0, p5

    .line 940
    .local v0, "newQuota":J
    iget-object v2, p0, Lcom/phonegap/DroidGap$EclairClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling quotaUpdater.updateQuota newQuota: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    invoke-interface {p9, v0, v1}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 949
    .end local v0    # "newQuota":J
    :goto_0
    return-void

    .line 947
    :cond_0
    invoke-interface {p9, p3, p4}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    goto :goto_0
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    .prologue
    .line 968
    invoke-super {p0, p1, p2}, Lcom/phonegap/DroidGap$GapClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 969
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 970
    return-void
.end method

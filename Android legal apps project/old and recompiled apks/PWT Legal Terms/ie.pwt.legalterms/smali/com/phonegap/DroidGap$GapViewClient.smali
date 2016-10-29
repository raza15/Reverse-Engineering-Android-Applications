.class public Lcom/phonegap/DroidGap$GapViewClient;
.super Landroid/webkit/WebViewClient;
.source "DroidGap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phonegap/DroidGap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GapViewClient"
.end annotation


# instance fields
.field ctx:Lcom/phonegap/DroidGap;

.field final synthetic this$0:Lcom/phonegap/DroidGap;


# direct methods
.method public constructor <init>(Lcom/phonegap/DroidGap;Lcom/phonegap/DroidGap;)V
    .locals 0
    .param p2, "ctx"    # Lcom/phonegap/DroidGap;

    .prologue
    .line 986
    iput-object p1, p0, Lcom/phonegap/DroidGap$GapViewClient;->this$0:Lcom/phonegap/DroidGap;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 987
    iput-object p2, p0, Lcom/phonegap/DroidGap$GapViewClient;->ctx:Lcom/phonegap/DroidGap;

    .line 988
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1107
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1110
    iget-object v0, p0, Lcom/phonegap/DroidGap$GapViewClient;->ctx:Lcom/phonegap/DroidGap;

    # operator++ for: Lcom/phonegap/DroidGap;->loadUrlTimeout:I
    invoke-static {v0}, Lcom/phonegap/DroidGap;->access$108(Lcom/phonegap/DroidGap;)I

    .line 1115
    const-string v0, "about:blank"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/phonegap/DroidGap$GapViewClient;->this$0:Lcom/phonegap/DroidGap;

    iget-object v0, v0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    const-string v1, "javascript:try{ PhoneGap.onNativeReady.fire();}catch(e){_nativeReady = true;}"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1120
    :cond_0
    iget-object v0, p0, Lcom/phonegap/DroidGap$GapViewClient;->this$0:Lcom/phonegap/DroidGap;

    iget-object v0, v0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1123
    iget-object v0, p0, Lcom/phonegap/DroidGap$GapViewClient;->ctx:Lcom/phonegap/DroidGap;

    iget-boolean v0, v0, Lcom/phonegap/DroidGap;->hideLoadingDialogOnPageLoad:Z

    if-eqz v0, :cond_1

    .line 1124
    iget-object v0, p0, Lcom/phonegap/DroidGap$GapViewClient;->ctx:Lcom/phonegap/DroidGap;

    iput-boolean v5, v0, Lcom/phonegap/DroidGap;->hideLoadingDialogOnPageLoad:Z

    .line 1125
    iget-object v0, p0, Lcom/phonegap/DroidGap$GapViewClient;->ctx:Lcom/phonegap/DroidGap;

    iget-object v0, v0, Lcom/phonegap/DroidGap;->pluginManager:Lcom/phonegap/api/PluginManager;

    const-string v1, "Notification"

    const-string v2, "activityStop"

    const/4 v3, 0x0

    const-string v4, "[]"

    invoke-virtual/range {v0 .. v5}, Lcom/phonegap/api/PluginManager;->exec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 1129
    :cond_1
    iget-object v0, p0, Lcom/phonegap/DroidGap$GapViewClient;->ctx:Lcom/phonegap/DroidGap;

    iget-boolean v0, v0, Lcom/phonegap/DroidGap;->clearHistory:Z

    if-eqz v0, :cond_2

    .line 1130
    iget-object v0, p0, Lcom/phonegap/DroidGap$GapViewClient;->ctx:Lcom/phonegap/DroidGap;

    iput-boolean v5, v0, Lcom/phonegap/DroidGap;->clearHistory:Z

    .line 1131
    iget-object v0, p0, Lcom/phonegap/DroidGap$GapViewClient;->ctx:Lcom/phonegap/DroidGap;

    iget-object v0, v0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 1135
    :cond_2
    const-string v0, "about:blank"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1136
    iget-object v0, p0, Lcom/phonegap/DroidGap$GapViewClient;->ctx:Lcom/phonegap/DroidGap;

    iget-object v0, v0, Lcom/phonegap/DroidGap;->callbackServer:Lcom/phonegap/CallbackServer;

    if-eqz v0, :cond_3

    .line 1137
    iget-object v0, p0, Lcom/phonegap/DroidGap$GapViewClient;->ctx:Lcom/phonegap/DroidGap;

    iget-object v0, v0, Lcom/phonegap/DroidGap;->callbackServer:Lcom/phonegap/CallbackServer;

    invoke-virtual {v0}, Lcom/phonegap/CallbackServer;->destroy()V

    .line 1140
    :cond_3
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 1153
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedError: Error code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Description="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " URL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1156
    iget-object v0, p0, Lcom/phonegap/DroidGap$GapViewClient;->ctx:Lcom/phonegap/DroidGap;

    # operator++ for: Lcom/phonegap/DroidGap;->loadUrlTimeout:I
    invoke-static {v0}, Lcom/phonegap/DroidGap;->access$108(Lcom/phonegap/DroidGap;)I

    .line 1159
    iget-object v0, p0, Lcom/phonegap/DroidGap$GapViewClient;->ctx:Lcom/phonegap/DroidGap;

    iget-object v0, v0, Lcom/phonegap/DroidGap;->pluginManager:Lcom/phonegap/api/PluginManager;

    const-string v1, "Notification"

    const-string v2, "activityStop"

    const/4 v3, 0x0

    const-string v4, "[]"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/phonegap/api/PluginManager;->exec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 1162
    iget-object v0, p0, Lcom/phonegap/DroidGap$GapViewClient;->ctx:Lcom/phonegap/DroidGap;

    invoke-virtual {v0, p2, p3, p4}, Lcom/phonegap/DroidGap;->onReceivedError(ILjava/lang/String;Ljava/lang/String;)V

    .line 1163
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 1167
    iget-object v4, p0, Lcom/phonegap/DroidGap$GapViewClient;->ctx:Lcom/phonegap/DroidGap;

    invoke-virtual {v4}, Lcom/phonegap/DroidGap;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1168
    .local v2, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/phonegap/DroidGap$GapViewClient;->ctx:Lcom/phonegap/DroidGap;

    invoke-virtual {v4}, Lcom/phonegap/DroidGap;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1171
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/16 v4, 0x80

    :try_start_0
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1172
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    .line 1174
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 1184
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-void

    .line 1178
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1180
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 1182
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 12
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    .line 1001
    const-string v8, "tel:"

    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1003
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.DIAL"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1004
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1005
    iget-object v8, p0, Lcom/phonegap/DroidGap$GapViewClient;->this$0:Lcom/phonegap/DroidGap;

    invoke-virtual {v8, v3}, Lcom/phonegap/DroidGap;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "intent":Landroid/content/Intent;
    :goto_0
    move v8, v11

    .line 1095
    :goto_1
    return v8

    .line 1006
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 1007
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error dialing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1013
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :cond_0
    const-string v8, "geo:"

    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1015
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1016
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1017
    iget-object v8, p0, Lcom/phonegap/DroidGap$GapViewClient;->this$0:Lcom/phonegap/DroidGap;

    invoke-virtual {v8, v3}, Lcom/phonegap/DroidGap;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v3    # "intent":Landroid/content/Intent;
    :goto_2
    move v8, v11

    .line 1021
    goto :goto_1

    .line 1018
    :catch_1
    move-exception v8

    move-object v1, v8

    .line 1019
    .restart local v1    # "e":Landroid/content/ActivityNotFoundException;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error showing map "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1025
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    const-string v8, "mailto:"

    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1027
    :try_start_2
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1028
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1029
    iget-object v8, p0, Lcom/phonegap/DroidGap$GapViewClient;->this$0:Lcom/phonegap/DroidGap;

    invoke-virtual {v8, v3}, Lcom/phonegap/DroidGap;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v3    # "intent":Landroid/content/Intent;
    :goto_3
    move v8, v11

    .line 1033
    goto/16 :goto_1

    .line 1030
    :catch_2
    move-exception v8

    move-object v1, v8

    .line 1031
    .restart local v1    # "e":Landroid/content/ActivityNotFoundException;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error sending email "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 1037
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :cond_2
    const-string v8, "sms:"

    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1039
    :try_start_3
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1042
    .restart local v3    # "intent":Landroid/content/Intent;
    const/4 v0, 0x0

    .line 1043
    .local v0, "address":Ljava/lang/String;
    const/16 v8, 0x3f

    invoke-virtual {p2, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 1044
    .local v5, "parmIndex":I
    const/4 v8, -0x1

    if-ne v5, v8, :cond_4

    .line 1045
    const/4 v8, 0x4

    invoke-virtual {p2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1059
    :cond_3
    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sms:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1060
    const-string v8, "address"

    invoke-virtual {v3, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1061
    const-string v8, "vnd.android-dir/mms-sms"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1062
    iget-object v8, p0, Lcom/phonegap/DroidGap$GapViewClient;->this$0:Lcom/phonegap/DroidGap;

    invoke-virtual {v8, v3}, Lcom/phonegap/DroidGap;->startActivity(Landroid/content/Intent;)V

    .end local v0    # "address":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "parmIndex":I
    :goto_5
    move v8, v11

    .line 1066
    goto/16 :goto_1

    .line 1048
    .restart local v0    # "address":Ljava/lang/String;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v5    # "parmIndex":I
    :cond_4
    const/4 v8, 0x4

    invoke-virtual {p2, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1051
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1052
    .local v7, "uri":Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v6

    .line 1053
    .local v6, "query":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 1054
    const-string v8, "body="

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1055
    const-string v8, "sms_body"

    const/4 v9, 0x5

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    .line 1063
    .end local v0    # "address":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "parmIndex":I
    .end local v6    # "query":Ljava/lang/String;
    .end local v7    # "uri":Landroid/net/Uri;
    :catch_3
    move-exception v8

    move-object v1, v8

    .line 1064
    .restart local v1    # "e":Landroid/content/ActivityNotFoundException;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error sending sms "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 1072
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :cond_5
    const/16 v8, 0x2f

    invoke-virtual {p2, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 1073
    .local v2, "i":I
    move-object v4, p2

    .line 1074
    .local v4, "newBaseUrl":Ljava/lang/String;
    if-lez v2, :cond_6

    .line 1075
    const/4 v8, 0x0

    invoke-virtual {p2, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1081
    :cond_6
    iget-object v8, p0, Lcom/phonegap/DroidGap$GapViewClient;->ctx:Lcom/phonegap/DroidGap;

    iget-boolean v8, v8, Lcom/phonegap/DroidGap;->loadInWebView:Z

    if-nez v8, :cond_7

    const-string v8, "file://"

    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/phonegap/DroidGap$GapViewClient;->ctx:Lcom/phonegap/DroidGap;

    # getter for: Lcom/phonegap/DroidGap;->baseUrl:Ljava/lang/String;
    invoke-static {v8}, Lcom/phonegap/DroidGap;->access$400(Lcom/phonegap/DroidGap;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1082
    :cond_7
    iget-object v8, p0, Lcom/phonegap/DroidGap$GapViewClient;->ctx:Lcom/phonegap/DroidGap;

    iget-object v8, v8, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    invoke-virtual {v8, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_6
    move v8, v11

    .line 1095
    goto/16 :goto_1

    .line 1088
    :cond_8
    :try_start_4
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1089
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1090
    iget-object v8, p0, Lcom/phonegap/DroidGap$GapViewClient;->this$0:Lcom/phonegap/DroidGap;

    invoke-virtual {v8, v3}, Lcom/phonegap/DroidGap;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    .line 1091
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_4
    move-exception v8

    move-object v1, v8

    .line 1092
    .restart local v1    # "e":Landroid/content/ActivityNotFoundException;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error loading url "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_6
.end method

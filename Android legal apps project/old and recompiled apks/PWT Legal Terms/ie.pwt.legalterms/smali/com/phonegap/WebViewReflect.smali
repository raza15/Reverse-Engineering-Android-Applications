.class public Lcom/phonegap/WebViewReflect;
.super Ljava/lang/Object;
.source "WebViewReflect.java"


# static fields
.field private static mWebSettings_setDatabaseEnabled:Ljava/lang/reflect/Method;

.field private static mWebSettings_setDatabasePath:Ljava/lang/reflect/Method;

.field private static mWebSettings_setDomStorageEnabled:Ljava/lang/reflect/Method;

.field private static mWebSettings_setGeolocationEnabled:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 24
    invoke-static {}, Lcom/phonegap/WebViewReflect;->checkCompatibility()V

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkCompatibility()V
    .locals 5

    .prologue
    .line 53
    :try_start_0
    const-class v0, Landroid/webkit/WebSettings;

    const-string v1, "setDatabaseEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/phonegap/WebViewReflect;->mWebSettings_setDatabaseEnabled:Ljava/lang/reflect/Method;

    .line 55
    const-class v0, Landroid/webkit/WebSettings;

    const-string v1, "setDatabasePath"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/phonegap/WebViewReflect;->mWebSettings_setDatabasePath:Ljava/lang/reflect/Method;

    .line 57
    const-class v0, Landroid/webkit/WebSettings;

    const-string v1, "setDomStorageEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/phonegap/WebViewReflect;->mWebSettings_setDomStorageEnabled:Ljava/lang/reflect/Method;

    .line 59
    const-class v0, Landroid/webkit/WebSettings;

    const-string v1, "setGeolocationEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/phonegap/WebViewReflect;->mWebSettings_setGeolocationEnabled:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static setDatabaseEnabled(Z)V
    .locals 6
    .param p0, "e"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    :try_start_0
    sget-object v3, Lcom/phonegap/WebViewReflect;->mWebSettings_setDatabaseEnabled:Ljava/lang/reflect/Method;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 34
    .local v2, "ite":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 35
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v3, v0, Ljava/io/IOException;

    if-eqz v3, :cond_0

    .line 36
    check-cast v0, Ljava/io/IOException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 37
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_0
    instance-of v3, v0, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_1

    .line 38
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 39
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_1
    instance-of v3, v0, Ljava/lang/Error;

    if-eqz v3, :cond_2

    .line 40
    check-cast v0, Ljava/lang/Error;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 43
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 45
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v2    # "ite":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 46
    .local v1, "ie":Ljava/lang/IllegalAccessException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setDomStorage(Landroid/webkit/WebSettings;)V
    .locals 5
    .param p0, "setting"    # Landroid/webkit/WebSettings;

    .prologue
    .line 109
    sget-object v1, Lcom/phonegap/WebViewReflect;->mWebSettings_setDomStorageEnabled:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 113
    :try_start_0
    sget-object v1, Lcom/phonegap/WebViewReflect;->mWebSettings_setDomStorageEnabled:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 116
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 117
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 119
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 120
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 122
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setGeolocationEnabled(Landroid/webkit/WebSettings;Z)V
    .locals 5
    .param p0, "setting"    # Landroid/webkit/WebSettings;
    .param p1, "enable"    # Z

    .prologue
    .line 88
    sget-object v1, Lcom/phonegap/WebViewReflect;->mWebSettings_setGeolocationEnabled:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 91
    :try_start_0
    sget-object v1, Lcom/phonegap/WebViewReflect;->mWebSettings_setGeolocationEnabled:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 106
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 94
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 95
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 97
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 98
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 100
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 104
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Native Geolocation not supported - we\'re ok"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setStorage(Landroid/webkit/WebSettings;ZLjava/lang/String;)V
    .locals 5
    .param p0, "setting"    # Landroid/webkit/WebSettings;
    .param p1, "enable"    # Z
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 68
    sget-object v1, Lcom/phonegap/WebViewReflect;->mWebSettings_setDatabaseEnabled:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 71
    :try_start_0
    sget-object v1, Lcom/phonegap/WebViewReflect;->mWebSettings_setDatabaseEnabled:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v1, Lcom/phonegap/WebViewReflect;->mWebSettings_setDatabasePath:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 75
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 76
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 78
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 79
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 81
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

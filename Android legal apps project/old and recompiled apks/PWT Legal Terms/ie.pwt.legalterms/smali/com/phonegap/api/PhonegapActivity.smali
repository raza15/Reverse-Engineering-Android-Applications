.class public abstract Lcom/phonegap/api/PhonegapActivity;
.super Landroid/app/Activity;
.source "PhonegapActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addService(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract sendJavascript(Ljava/lang/String;)V
.end method

.method public abstract startActivityForResult(Lcom/phonegap/api/Plugin;Landroid/content/Intent;I)V
.end method

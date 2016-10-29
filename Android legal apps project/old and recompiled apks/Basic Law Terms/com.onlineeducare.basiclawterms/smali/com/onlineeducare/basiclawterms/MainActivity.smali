.class public Lcom/onlineeducare/basiclawterms/MainActivity;
.super Lorg/apache/cordova/DroidGap;
.source "MainActivity.java"


# static fields
.field private static final AdMob_Ad_Unit:Ljava/lang/String; = "ca-app-pub-7027224072642447/2784110212"


# instance fields
.field private adView:Lcom/google/ads/AdView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lorg/apache/cordova/DroidGap;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lorg/apache/cordova/DroidGap;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-static {}, Lorg/apache/cordova/Config;->getStartUrl()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v2}, Lorg/apache/cordova/DroidGap;->loadUrl(Ljava/lang/String;)V

    .line 21
    new-instance v2, Lcom/google/ads/AdView;

    sget-object v3, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    const-string v4, "ca-app-pub-7027224072642447/2784110212"

    invoke-direct {v2, p0, v3, v4}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/onlineeducare/basiclawterms/MainActivity;->adView:Lcom/google/ads/AdView;

    .line 22
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->root:Landroid/widget/LinearLayout;

    .line 23
    .local v0, "layout":Landroid/widget/LinearLayout;
    iget-object v2, p0, Lcom/onlineeducare/basiclawterms/MainActivity;->adView:Lcom/google/ads/AdView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 24
    new-instance v1, Lcom/google/ads/AdRequest;

    invoke-direct {v1}, Lcom/google/ads/AdRequest;-><init>()V

    .line 25
    .local v1, "request":Lcom/google/ads/AdRequest;
    iget-object v2, p0, Lcom/onlineeducare/basiclawterms/MainActivity;->adView:Lcom/google/ads/AdView;

    invoke-virtual {v2, v1}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    .line 26
    return-void
.end method

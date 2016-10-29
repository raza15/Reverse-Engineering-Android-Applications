.class Lcom/phonegap/DroidGap$LinearLayoutSoftKeyboardDetect;
.super Landroid/widget/LinearLayout;
.source "DroidGap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phonegap/DroidGap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LinearLayoutSoftKeyboardDetect"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SoftKeyboardDetect"


# instance fields
.field private oldHeight:I

.field private oldWidth:I

.field private screenHeight:I

.field private screenWidth:I

.field final synthetic this$0:Lcom/phonegap/DroidGap;


# direct methods
.method public constructor <init>(Lcom/phonegap/DroidGap;Landroid/content/Context;II)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v0, 0x0

    .line 1374
    iput-object p1, p0, Lcom/phonegap/DroidGap$LinearLayoutSoftKeyboardDetect;->this$0:Lcom/phonegap/DroidGap;

    .line 1375
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1369
    iput v0, p0, Lcom/phonegap/DroidGap$LinearLayoutSoftKeyboardDetect;->oldHeight:I

    .line 1370
    iput v0, p0, Lcom/phonegap/DroidGap$LinearLayoutSoftKeyboardDetect;->oldWidth:I

    .line 1371
    iput v0, p0, Lcom/phonegap/DroidGap$LinearLayoutSoftKeyboardDetect;->screenWidth:I

    .line 1372
    iput v0, p0, Lcom/phonegap/DroidGap$LinearLayoutSoftKeyboardDetect;->screenHeight:I

    .line 1376
    iput p3, p0, Lcom/phonegap/DroidGap$LinearLayoutSoftKeyboardDetect;->screenWidth:I

    .line 1377
    iput p4, p0, Lcom/phonegap/DroidGap$LinearLayoutSoftKeyboardDetect;->screenHeight:I

    .line 1378
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1394
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1396
    const-string v3, "SoftKeyboardDetect"

    const-string v4, "We are in our onMeasure method"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1401
    .local v0, "height":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1403
    .local v2, "width":I
    const-string v3, "SoftKeyboardDetect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Old Height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/phonegap/DroidGap$LinearLayoutSoftKeyboardDetect;->oldHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    const-string v3, "SoftKeyboardDetect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    const-string v3, "SoftKeyboardDetect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Old Width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/phonegap/DroidGap$LinearLayoutSoftKeyboardDetect;->oldWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    const-string v3, "SoftKeyboardDetect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    iget v3, p0, Lcom/phonegap/DroidGap$LinearLayoutSoftKeyboardDetect;->oldHeight:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/phonegap/DroidGap$LinearLayoutSoftKeyboardDetect;->oldHeight:I

    if-ne v3, v0, :cond_2

    .line 1412
    :cond_0
    const-string v3, "SoftKeyboardDetect"

    const-string v4, "Ignore this event"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    :cond_1
    :goto_0
    iput v0, p0, Lcom/phonegap/DroidGap$LinearLayoutSoftKeyboardDetect;->oldHeight:I

    .line 1437
    iput v2, p0, Lcom/phonegap/DroidGap$LinearLayoutSoftKeyboardDetect;->oldWidth:I

    .line 1438
    return-void

    .line 1415
    :cond_2
    iget v3, p0, Lcom/phonegap/DroidGap$LinearLayoutSoftKeyboardDetect;->screenHeight:I

    if-ne v3, v2, :cond_3

    .line 1417
    iget v1, p0, Lcom/phonegap/DroidGap$LinearLayoutSoftKeyboardDetect;->screenHeight:I

    .line 1418
    .local v1, "tmp_var":I
    iget v3, p0, Lcom/phonegap/DroidGap$LinearLayoutSoftKeyboardDetect;->screenWidth:I

    iput v3, p0, Lcom/phonegap/DroidGap$LinearLayoutSoftKeyboardDetect;->screenHeight:I

    .line 1419
    iput v1, p0, Lcom/phonegap/DroidGap$LinearLayoutSoftKeyboardDetect;->screenWidth:I

    .line 1420
    const-string v3, "SoftKeyboardDetect"

    const-string v4, "Orientation Change"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1424
    .end local v1    # "tmp_var":I
    :cond_3
    iget v3, p0, Lcom/phonegap/DroidGap$LinearLayoutSoftKeyboardDetect;->oldHeight:I

    if-le v0, v3, :cond_4

    .line 1425
    const-string v3, "SoftKeyboardDetect"

    const-string v4, "Throw hide keyboard event"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    iget-object v3, p0, Lcom/phonegap/DroidGap$LinearLayoutSoftKeyboardDetect;->this$0:Lcom/phonegap/DroidGap;

    iget-object v3, v3, Lcom/phonegap/DroidGap;->callbackServer:Lcom/phonegap/CallbackServer;

    const-string v4, "PhoneGap.fireEvent(\'hidekeyboard\');"

    invoke-virtual {v3, v4}, Lcom/phonegap/CallbackServer;->sendJavascript(Ljava/lang/String;)V

    goto :goto_0

    .line 1430
    :cond_4
    iget v3, p0, Lcom/phonegap/DroidGap$LinearLayoutSoftKeyboardDetect;->oldHeight:I

    if-ge v0, v3, :cond_1

    .line 1431
    const-string v3, "SoftKeyboardDetect"

    const-string v4, "Throw show keyboard event"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    iget-object v3, p0, Lcom/phonegap/DroidGap$LinearLayoutSoftKeyboardDetect;->this$0:Lcom/phonegap/DroidGap;

    iget-object v3, v3, Lcom/phonegap/DroidGap;->callbackServer:Lcom/phonegap/CallbackServer;

    const-string v4, "PhoneGap.fireEvent(\'showkeyboard\');"

    invoke-virtual {v3, v4}, Lcom/phonegap/CallbackServer;->sendJavascript(Ljava/lang/String;)V

    goto :goto_0
.end method

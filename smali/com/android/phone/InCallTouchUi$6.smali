.class Lcom/android/phone/InCallTouchUi$6;
.super Ljava/lang/Object;
.source "InCallTouchUi.java"

# interfaces
.implements Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$ItemSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallTouchUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallTouchUi;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallTouchUi;)V
    .locals 0
    .parameter

    .prologue
    .line 3625
    iput-object p1, p0, Lcom/android/phone/InCallTouchUi$6;->this$0:Lcom/android/phone/InCallTouchUi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/view/View;ILjava/lang/Object;)V
    .locals 6
    .parameter "v"
    .parameter "itemIndex"
    .parameter "data"

    .prologue
    .line 3630
    move-object v0, p3

    check-cast v0, Landroid/os/Bundle;

    .line 3632
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    if-eqz v0, :cond_1

    .line 3635
    :cond_0
    const-string v3, "data"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3636
    .local v2, phoneNumber:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3638
    .local v1, callIntent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3639
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi$6;->this$0:Lcom/android/phone/InCallTouchUi;

    #getter for: Lcom/android/phone/InCallTouchUi;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/InCallTouchUi;->access$1500(Lcom/android/phone/InCallTouchUi;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3645
    .end local v1           #callIntent:Landroid/content/Intent;
    .end local v2           #phoneNumber:Ljava/lang/String;
    :cond_1
    return-void
.end method

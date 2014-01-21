.class Lcom/android/phone/DTMFTwelveKeyDialerViewForVT$2;
.super Ljava/lang/Object;
.source "DTMFTwelveKeyDialerViewForVT.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->setDialer(Lcom/android/phone/DTMFTwelveKeyDialerForVT;Lcom/android/phone/InVTCallScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

.field final synthetic val$inVTCallScreen:Lcom/android/phone/InVTCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT$2;->this$0:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    iput-object p2, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT$2;->val$inVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 80
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "onehand_direction"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 81
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT$2;->this$0:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    #getter for: Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mLeftArrow:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->access$000(Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT$2;->this$0:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    #getter for: Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mRightArrow:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->access$100(Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT$2;->val$inVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->resetControls()V

    .line 84
    return-void
.end method

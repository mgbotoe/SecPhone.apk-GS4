.class Lcom/android/phone/PhoneGlobals$1;
.super Landroid/os/Handler;
.source "PhoneGlobals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneGlobals;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 0
    .parameter

    .prologue
    .line 687
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 690
    const-string v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 691
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 697
    :pswitch_0
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    .line 698
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "phone2_on"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    .line 699
    .local v1, phone2On:Z
    :goto_1
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    .line 700
    .local v0, airplaneMode:Z
    :goto_2
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 701
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v3, v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->setRadioPowerOnNow()V

    goto :goto_0

    .end local v0           #airplaneMode:Z
    .end local v1           #phone2On:Z
    :cond_1
    move v1, v3

    .line 698
    goto :goto_1

    .restart local v1       #phone2On:Z
    :cond_2
    move v0, v3

    .line 699
    goto :goto_2

    .line 691
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

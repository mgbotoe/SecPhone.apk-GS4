.class Lcom/android/phone/CallFeaturesSetting$12;
.super Ljava/lang/Object;
.source "CallFeaturesSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallFeaturesSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 2690
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$12;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 2693
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$12;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationSound:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->access$000(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2694
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$12;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$12;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationSound:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->access$000(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/Preference;

    move-result-object v1

    #calls: Lcom/android/phone/CallFeaturesSetting;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v2, v1, v2}, Lcom/android/phone/CallFeaturesSetting;->access$2600(Lcom/android/phone/CallFeaturesSetting;ILandroid/preference/Preference;I)V

    .line 2697
    :cond_0
    return-void
.end method

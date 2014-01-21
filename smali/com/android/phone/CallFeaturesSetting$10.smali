.class Lcom/android/phone/CallFeaturesSetting$10;
.super Ljava/lang/Object;
.source "CallFeaturesSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallFeaturesSetting;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 2341
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$10;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2343
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$10;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #setter for: Lcom/android/phone/CallFeaturesSetting;->mListIndex:I
    invoke-static {v0, p2}, Lcom/android/phone/CallFeaturesSetting;->access$2302(Lcom/android/phone/CallFeaturesSetting;I)I

    .line 2344
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$10;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #calls: Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->access$2400(Lcom/android/phone/CallFeaturesSetting;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "usecall_fail_option_cmcc"

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$10;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mListIndex:I
    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->access$2300(Lcom/android/phone/CallFeaturesSetting;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2345
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2346
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$10;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #calls: Lcom/android/phone/CallFeaturesSetting;->updateFailOptionCmccSummary()V
    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->access$2500(Lcom/android/phone/CallFeaturesSetting;)V

    .line 2347
    return-void
.end method

.class Lcom/android/phone/KTCallForwardingConditional$1;
.super Ljava/lang/Object;
.source "KTCallForwardingConditional.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/KTCallForwardingConditional;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/KTCallForwardingConditional;


# direct methods
.method constructor <init>(Lcom/android/phone/KTCallForwardingConditional;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/phone/KTCallForwardingConditional$1;->this$0:Lcom/android/phone/KTCallForwardingConditional;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v9, 0x1

    .line 135
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional$1;->this$0:Lcom/android/phone/KTCallForwardingConditional;

    const/4 v2, 0x5

    iput v2, v0, Lcom/android/phone/KTCallForwardingConditional;->reason:I

    .line 136
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional$1;->this$0:Lcom/android/phone/KTCallForwardingConditional;

    #setter for: Lcom/android/phone/KTCallForwardingConditional;->mServiceClass:I
    invoke-static {v0, v9}, Lcom/android/phone/KTCallForwardingConditional;->access$102(Lcom/android/phone/KTCallForwardingConditional;I)I

    .line 137
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional$1;->this$0:Lcom/android/phone/KTCallForwardingConditional;

    #getter for: Lcom/android/phone/KTCallForwardingConditional;->mCheckedProgressDialog:Z
    invoke-static {v0}, Lcom/android/phone/KTCallForwardingConditional;->access$200(Lcom/android/phone/KTCallForwardingConditional;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, number:Ljava/lang/String;
    const/4 v1, 0x3

    .line 141
    .local v1, action:I
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional$1;->this$0:Lcom/android/phone/KTCallForwardingConditional;

    iget v0, v0, Lcom/android/phone/KTCallForwardingConditional;->reason:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v4, 0x0

    .line 142
    .local v4, time:I
    :goto_0
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional$1;->this$0:Lcom/android/phone/KTCallForwardingConditional;

    #setter for: Lcom/android/phone/KTCallForwardingConditional;->mChecked:Z
    invoke-static {v0, v9}, Lcom/android/phone/KTCallForwardingConditional;->access$302(Lcom/android/phone/KTCallForwardingConditional;Z)Z

    .line 144
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional$1;->this$0:Lcom/android/phone/KTCallForwardingConditional;

    #getter for: Lcom/android/phone/KTCallForwardingConditional;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/KTCallForwardingConditional;->access$500(Lcom/android/phone/KTCallForwardingConditional;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/KTCallForwardingConditional$1;->this$0:Lcom/android/phone/KTCallForwardingConditional;

    iget v2, v2, Lcom/android/phone/KTCallForwardingConditional;->reason:I

    iget-object v5, p0, Lcom/android/phone/KTCallForwardingConditional$1;->this$0:Lcom/android/phone/KTCallForwardingConditional;

    #getter for: Lcom/android/phone/KTCallForwardingConditional;->mHandler:Lcom/android/phone/KTCallForwardingConditional$MyHandler;
    invoke-static {v5}, Lcom/android/phone/KTCallForwardingConditional;->access$400(Lcom/android/phone/KTCallForwardingConditional;)Lcom/android/phone/KTCallForwardingConditional$MyHandler;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/phone/KTCallForwardingConditional$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 145
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional$1;->this$0:Lcom/android/phone/KTCallForwardingConditional;

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v5, p0, Lcom/android/phone/KTCallForwardingConditional$1;->this$0:Lcom/android/phone/KTCallForwardingConditional;

    invoke-virtual {v5}, Lcom/android/phone/KTCallForwardingConditional;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/phone/KTCallForwardingConditional$1;->this$0:Lcom/android/phone/KTCallForwardingConditional;

    const v8, 0x7f0905ed

    invoke-virtual {v7, v8}, Lcom/android/phone/KTCallForwardingConditional;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #setter for: Lcom/android/phone/KTCallForwardingConditional;->mProgress:Ljava/lang/ref/WeakReference;
    invoke-static {v0, v2}, Lcom/android/phone/KTCallForwardingConditional;->access$602(Lcom/android/phone/KTCallForwardingConditional;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 146
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional$1;->this$0:Lcom/android/phone/KTCallForwardingConditional;

    #calls: Lcom/android/phone/KTCallForwardingConditional;->destoryProgressDialogFromNoResponse()V
    invoke-static {v0}, Lcom/android/phone/KTCallForwardingConditional;->access$700(Lcom/android/phone/KTCallForwardingConditional;)V

    .line 147
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional$1;->this$0:Lcom/android/phone/KTCallForwardingConditional;

    #setter for: Lcom/android/phone/KTCallForwardingConditional;->mCheckedProgressDialog:Z
    invoke-static {v0, v9}, Lcom/android/phone/KTCallForwardingConditional;->access$202(Lcom/android/phone/KTCallForwardingConditional;Z)Z

    .line 149
    .end local v1           #action:I
    .end local v3           #number:Ljava/lang/String;
    .end local v4           #time:I
    :cond_0
    return v9

    .line 141
    .restart local v1       #action:I
    .restart local v3       #number:Ljava/lang/String;
    :cond_1
    const/16 v4, 0x14

    goto :goto_0
.end method

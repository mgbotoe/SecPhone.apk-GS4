.class Lcom/android/phone/RecommendRingtoneDialog$1;
.super Ljava/lang/Object;
.source "RecommendRingtoneDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RecommendRingtoneDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RecommendRingtoneDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/RecommendRingtoneDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/phone/RecommendRingtoneDialog$1;->this$0:Lcom/android/phone/RecommendRingtoneDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "position"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    .line 73
    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog$1;->this$0:Lcom/android/phone/RecommendRingtoneDialog;

    #setter for: Lcom/android/phone/RecommendRingtoneDialog;->mSelectedPosition:I
    invoke-static {v0, p2}, Lcom/android/phone/RecommendRingtoneDialog;->access$002(Lcom/android/phone/RecommendRingtoneDialog;I)I

    .line 74
    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog$1;->this$0:Lcom/android/phone/RecommendRingtoneDialog;

    #getter for: Lcom/android/phone/RecommendRingtoneDialog;->mRecommendAdapter:Lcom/android/phone/RecommendRingtoneDialog$RecommendAdapter;
    invoke-static {v0}, Lcom/android/phone/RecommendRingtoneDialog;->access$100(Lcom/android/phone/RecommendRingtoneDialog;)Lcom/android/phone/RecommendRingtoneDialog$RecommendAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/RecommendRingtoneDialog$RecommendAdapter;->notifyDataSetChanged()V

    .line 75
    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog$1;->this$0:Lcom/android/phone/RecommendRingtoneDialog;

    #getter for: Lcom/android/phone/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/phone/RecommendRingtoneDialog;->access$200(Lcom/android/phone/RecommendRingtoneDialog;)Landroid/media/Ringtone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog$1;->this$0:Lcom/android/phone/RecommendRingtoneDialog;

    #getter for: Lcom/android/phone/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/phone/RecommendRingtoneDialog;->access$200(Lcom/android/phone/RecommendRingtoneDialog;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 78
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 96
    :goto_0
    return-void

    .line 80
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog$1;->this$0:Lcom/android/phone/RecommendRingtoneDialog;

    #getter for: Lcom/android/phone/RecommendRingtoneDialog;->mSimIndex:I
    invoke-static {v0}, Lcom/android/phone/RecommendRingtoneDialog;->access$300(Lcom/android/phone/RecommendRingtoneDialog;)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 81
    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog$1;->this$0:Lcom/android/phone/RecommendRingtoneDialog;

    iget-object v1, p0, Lcom/android/phone/RecommendRingtoneDialog$1;->this$0:Lcom/android/phone/RecommendRingtoneDialog;

    #getter for: Lcom/android/phone/RecommendRingtoneDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/RecommendRingtoneDialog;->access$400(Lcom/android/phone/RecommendRingtoneDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    #setter for: Lcom/android/phone/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;
    invoke-static {v0, v1}, Lcom/android/phone/RecommendRingtoneDialog;->access$202(Lcom/android/phone/RecommendRingtoneDialog;Landroid/media/Ringtone;)Landroid/media/Ringtone;

    .line 84
    :goto_1
    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog$1;->this$0:Lcom/android/phone/RecommendRingtoneDialog;

    #getter for: Lcom/android/phone/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/phone/RecommendRingtoneDialog;->access$200(Lcom/android/phone/RecommendRingtoneDialog;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    goto :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog$1;->this$0:Lcom/android/phone/RecommendRingtoneDialog;

    iget-object v1, p0, Lcom/android/phone/RecommendRingtoneDialog$1;->this$0:Lcom/android/phone/RecommendRingtoneDialog;

    #getter for: Lcom/android/phone/RecommendRingtoneDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/RecommendRingtoneDialog;->access$400(Lcom/android/phone/RecommendRingtoneDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    #setter for: Lcom/android/phone/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;
    invoke-static {v0, v1}, Lcom/android/phone/RecommendRingtoneDialog;->access$202(Lcom/android/phone/RecommendRingtoneDialog;Landroid/media/Ringtone;)Landroid/media/Ringtone;

    goto :goto_1

    .line 87
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog$1;->this$0:Lcom/android/phone/RecommendRingtoneDialog;

    #getter for: Lcom/android/phone/RecommendRingtoneDialog;->mSimIndex:I
    invoke-static {v0}, Lcom/android/phone/RecommendRingtoneDialog;->access$300(Lcom/android/phone/RecommendRingtoneDialog;)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 88
    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog$1;->this$0:Lcom/android/phone/RecommendRingtoneDialog;

    iget-object v1, p0, Lcom/android/phone/RecommendRingtoneDialog$1;->this$0:Lcom/android/phone/RecommendRingtoneDialog;

    #getter for: Lcom/android/phone/RecommendRingtoneDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/RecommendRingtoneDialog;->access$400(Lcom/android/phone/RecommendRingtoneDialog;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/RecommendRingtoneDialog$1;->this$0:Lcom/android/phone/RecommendRingtoneDialog;

    #getter for: Lcom/android/phone/RecommendRingtoneDialog;->offset:I
    invoke-static {v2}, Lcom/android/phone/RecommendRingtoneDialog;->access$500(Lcom/android/phone/RecommendRingtoneDialog;)I

    move-result v2

    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;ILandroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    #setter for: Lcom/android/phone/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;
    invoke-static {v0, v1}, Lcom/android/phone/RecommendRingtoneDialog;->access$202(Lcom/android/phone/RecommendRingtoneDialog;Landroid/media/Ringtone;)Landroid/media/Ringtone;

    .line 91
    :goto_2
    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog$1;->this$0:Lcom/android/phone/RecommendRingtoneDialog;

    #getter for: Lcom/android/phone/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/phone/RecommendRingtoneDialog;->access$200(Lcom/android/phone/RecommendRingtoneDialog;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    goto :goto_0

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog$1;->this$0:Lcom/android/phone/RecommendRingtoneDialog;

    iget-object v1, p0, Lcom/android/phone/RecommendRingtoneDialog$1;->this$0:Lcom/android/phone/RecommendRingtoneDialog;

    #getter for: Lcom/android/phone/RecommendRingtoneDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/RecommendRingtoneDialog;->access$400(Lcom/android/phone/RecommendRingtoneDialog;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/RecommendRingtoneDialog$1;->this$0:Lcom/android/phone/RecommendRingtoneDialog;

    #getter for: Lcom/android/phone/RecommendRingtoneDialog;->offset:I
    invoke-static {v2}, Lcom/android/phone/RecommendRingtoneDialog;->access$500(Lcom/android/phone/RecommendRingtoneDialog;)I

    move-result v2

    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;ILandroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    #setter for: Lcom/android/phone/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;
    invoke-static {v0, v1}, Lcom/android/phone/RecommendRingtoneDialog;->access$202(Lcom/android/phone/RecommendRingtoneDialog;Landroid/media/Ringtone;)Landroid/media/Ringtone;

    goto :goto_2

    .line 78
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

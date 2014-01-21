.class final Lcom/android/phone/PhoneUtils$9;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneUtils;->playCallEndTone(Landroid/content/Context;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6279
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v1, 0x1

    .line 6281
    const-string v0, "onError: playMediaTone error"

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->access$000(Ljava/lang/String;Z)V

    .line 6282
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->handleEndCallTunePlayCompleted(Landroid/media/MediaPlayer;)V

    .line 6283
    return v1
.end method

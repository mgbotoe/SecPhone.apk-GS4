.class Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread$FileEndWithFilter;
.super Ljava/lang/Object;
.source "PhoneVTVoiceRecorder.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileEndWithFilter"
.end annotation


# instance fields
.field private fileName:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;


# direct methods
.method public constructor <init>(Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "fileName"

    .prologue
    .line 508
    iput-object p1, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread$FileEndWithFilter;->this$1:Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 509
    iput-object p2, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread$FileEndWithFilter;->fileName:Ljava/lang/String;

    .line 510
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .parameter "dir"
    .parameter "name"

    .prologue
    .line 512
    if-eqz p2, :cond_0

    .line 513
    iget-object v0, p0, Lcom/android/phone/PhoneVTVoiceRecorder$RecorderThread$FileEndWithFilter;->fileName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 515
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

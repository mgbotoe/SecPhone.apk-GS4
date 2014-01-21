.class public Lcom/android/phone/CallTextToSpeech;
.super Ljava/lang/Object;
.source "CallTextToSpeech.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallTextToSpeech$TtsListener;
    }
.end annotation


# static fields
.field private static final SRC_TAGS:[Ljava/lang/String;

.field public static final TTS_DEFAULT_VOL:I

.field private static mInstance:Lcom/android/phone/CallTextToSpeech;


# instance fields
.field private DEFAULT_TTS_STREAM:Ljava/lang/String;

.field private DEFAULT_TTS_STREAM_DURING_CALL:Ljava/lang/String;

.field private final FADE_IN:I

.field private final FADE_IN_THRESHOLD_TIME:I

.field private final FADE_OUT:I

.field private final FADE_OUT_THRESHOLD_TIME:I

.field private final INVALID_VOLUME_LEVEL:I

.field private IsTtsInitiated:Z

.field private NewVoicemail:Ljava/lang/String;

.field private final REPEAT_TTS:I

.field private final REPEAT_TTS_DELAY:I

.field private final RINGTONE_MAX_VOLUME_FOR_TTS:I

.field private final TTS_REPEAT_COUNT_MAX:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentRingtoneVolume:I

.field private mDisplayName:Ljava/lang/String;

.field private mEnginesHelper:Landroid/speech/tts/TtsEngines;

.field private mFadeInUpdateDelay:I

.field private mFadeOutUpdateDelay:I

.field private mHandler:Landroid/os/Handler;

.field private mOriginNotiVolume:I

.field private mOriginRingVolume:I

.field private mOriginTtsVolume:I

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private mTtsId:I

.field private mTtsListener:Lcom/android/phone/CallTextToSpeech$TtsListener;

.field private mTtsRepeatCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "%s"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/CallTextToSpeech;->SRC_TAGS:[Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CallTextToSpeech;->mInstance:Lcom/android/phone/CallTextToSpeech;

    .line 73
    sget-object v0, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    sput v0, Lcom/android/phone/CallTextToSpeech;->TTS_DEFAULT_VOL:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "TtsId"

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 200
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v3, p0, Lcom/android/phone/CallTextToSpeech;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 54
    iput-object v3, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    .line 56
    iput-object v3, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    .line 58
    iput-object v3, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 62
    iput-object v3, p0, Lcom/android/phone/CallTextToSpeech;->mTtsListener:Lcom/android/phone/CallTextToSpeech$TtsListener;

    .line 65
    iput v2, p0, Lcom/android/phone/CallTextToSpeech;->INVALID_VOLUME_LEVEL:I

    .line 67
    iput v2, p0, Lcom/android/phone/CallTextToSpeech;->mOriginTtsVolume:I

    .line 69
    iput v2, p0, Lcom/android/phone/CallTextToSpeech;->mOriginRingVolume:I

    .line 71
    iput v2, p0, Lcom/android/phone/CallTextToSpeech;->mOriginNotiVolume:I

    .line 86
    iput v4, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    .line 99
    iput-object v3, p0, Lcom/android/phone/CallTextToSpeech;->mDisplayName:Ljava/lang/String;

    .line 110
    iput-object v3, p0, Lcom/android/phone/CallTextToSpeech;->NewVoicemail:Ljava/lang/String;

    .line 113
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallTextToSpeech;->DEFAULT_TTS_STREAM:Ljava/lang/String;

    .line 115
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallTextToSpeech;->DEFAULT_TTS_STREAM_DURING_CALL:Ljava/lang/String;

    .line 119
    iput-boolean v4, p0, Lcom/android/phone/CallTextToSpeech;->IsTtsInitiated:Z

    .line 121
    iput-object v3, p0, Lcom/android/phone/CallTextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 124
    const/16 v1, 0x64

    iput v1, p0, Lcom/android/phone/CallTextToSpeech;->FADE_IN:I

    .line 126
    const/16 v1, 0xc8

    iput v1, p0, Lcom/android/phone/CallTextToSpeech;->FADE_OUT:I

    .line 128
    const/16 v1, 0x12c

    iput v1, p0, Lcom/android/phone/CallTextToSpeech;->REPEAT_TTS:I

    .line 130
    const/16 v1, 0x7d0

    iput v1, p0, Lcom/android/phone/CallTextToSpeech;->REPEAT_TTS_DELAY:I

    .line 132
    const/16 v1, 0xfa0

    iput v1, p0, Lcom/android/phone/CallTextToSpeech;->FADE_IN_THRESHOLD_TIME:I

    .line 134
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/android/phone/CallTextToSpeech;->FADE_OUT_THRESHOLD_TIME:I

    .line 136
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/CallTextToSpeech;->TTS_REPEAT_COUNT_MAX:I

    .line 138
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/phone/CallTextToSpeech;->RINGTONE_MAX_VOLUME_FOR_TTS:I

    .line 140
    iput v4, p0, Lcom/android/phone/CallTextToSpeech;->mFadeInUpdateDelay:I

    .line 142
    iput v4, p0, Lcom/android/phone/CallTextToSpeech;->mFadeOutUpdateDelay:I

    .line 144
    iput v2, p0, Lcom/android/phone/CallTextToSpeech;->mCurrentRingtoneVolume:I

    .line 146
    iput v4, p0, Lcom/android/phone/CallTextToSpeech;->mTtsRepeatCount:I

    .line 148
    new-instance v1, Lcom/android/phone/CallTextToSpeech$1;

    invoke-direct {v1, p0}, Lcom/android/phone/CallTextToSpeech$1;-><init>(Lcom/android/phone/CallTextToSpeech;)V

    iput-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mHandler:Landroid/os/Handler;

    .line 201
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 202
    .local v0, app:Lcom/android/phone/PhoneGlobals;
    iget-object v1, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 203
    iput-object p1, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    .line 204
    iget-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    .line 206
    iput p2, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    .line 207
    new-instance v1, Lcom/android/phone/CallTextToSpeech$TtsListener;

    invoke-direct {v1, p0, v3}, Lcom/android/phone/CallTextToSpeech$TtsListener;-><init>(Lcom/android/phone/CallTextToSpeech;Lcom/android/phone/CallTextToSpeech$1;)V

    iput-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mTtsListener:Lcom/android/phone/CallTextToSpeech$TtsListener;

    .line 208
    new-instance v1, Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/CallTextToSpeech;->mTtsListener:Lcom/android/phone/CallTextToSpeech$TtsListener;

    invoke-direct {v1, v2, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 210
    iget-boolean v1, p0, Lcom/android/phone/CallTextToSpeech;->IsTtsInitiated:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 211
    iget v1, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-direct {p0, v1}, Lcom/android/phone/CallTextToSpeech;->speakTts(I)V

    .line 212
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CallTextToSpeech;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/phone/CallTextToSpeech;->mCurrentRingtoneVolume:I

    return v0
.end method

.method static synthetic access$008(Lcom/android/phone/CallTextToSpeech;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/phone/CallTextToSpeech;->mCurrentRingtoneVolume:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/phone/CallTextToSpeech;->mCurrentRingtoneVolume:I

    return v0
.end method

.method static synthetic access$010(Lcom/android/phone/CallTextToSpeech;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/phone/CallTextToSpeech;->mCurrentRingtoneVolume:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/phone/CallTextToSpeech;->mCurrentRingtoneVolume:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/CallTextToSpeech;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/CallTextToSpeech;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/phone/CallTextToSpeech;->speakTts(I)V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/phone/CallTextToSpeech;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/phone/CallTextToSpeech;->IsTtsInitiated:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/phone/CallTextToSpeech;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/CallTextToSpeech;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/CallTextToSpeech;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/phone/CallTextToSpeech;->mFadeOutUpdateDelay:I

    return v0
.end method

.method static synthetic access$300()Lcom/android/phone/CallTextToSpeech;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/phone/CallTextToSpeech;->mInstance:Lcom/android/phone/CallTextToSpeech;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/CallTextToSpeech;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/phone/CallTextToSpeech;->makeIdleTTS()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/CallTextToSpeech;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/phone/CallTextToSpeech;->mOriginRingVolume:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/CallTextToSpeech;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/phone/CallTextToSpeech;->mFadeInUpdateDelay:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/CallTextToSpeech;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/phone/CallTextToSpeech;->mTtsRepeatCount:I

    return v0
.end method

.method static synthetic access$708(Lcom/android/phone/CallTextToSpeech;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/phone/CallTextToSpeech;->mTtsRepeatCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/phone/CallTextToSpeech;->mTtsRepeatCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/CallTextToSpeech;)Landroid/speech/tts/TextToSpeech;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/CallTextToSpeech;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    return v0
.end method

.method private formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "number"

    .prologue
    .line 591
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 592
    .local v2, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 594
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 595
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 596
    .local v0, c:C
    const/16 v4, 0x30

    if-lt v0, v4, :cond_0

    const/16 v4, 0x39

    if-le v0, v4, :cond_1

    :cond_0
    const/16 v4, 0x2b

    if-eq v0, v4, :cond_1

    const/16 v4, 0x2a

    if-eq v0, v4, :cond_1

    const/16 v4, 0x23

    if-ne v0, v4, :cond_2

    .line 597
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 598
    add-int/lit8 v4, v3, -0x1

    if-ge v1, v4, :cond_2

    .line 599
    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 594
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 602
    .end local v0           #c:C
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private formatTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "phoneNumber"

    .prologue
    .line 587
    invoke-direct {p0, p1}, Lcom/android/phone/CallTextToSpeech;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;I)Lcom/android/phone/CallTextToSpeech;
    .locals 2
    .parameter "context"
    .parameter "TtsId"

    .prologue
    .line 283
    const-class v1, Lcom/android/phone/CallTextToSpeech;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/CallTextToSpeech;->mInstance:Lcom/android/phone/CallTextToSpeech;

    if-eqz v0, :cond_0

    .line 284
    sget-object v0, Lcom/android/phone/CallTextToSpeech;->mInstance:Lcom/android/phone/CallTextToSpeech;

    invoke-virtual {v0}, Lcom/android/phone/CallTextToSpeech;->stopTts()V

    .line 286
    :cond_0
    new-instance v0, Lcom/android/phone/CallTextToSpeech;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/CallTextToSpeech;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/android/phone/CallTextToSpeech;->mInstance:Lcom/android/phone/CallTextToSpeech;

    .line 287
    sget-object v0, Lcom/android/phone/CallTextToSpeech;->mInstance:Lcom/android/phone/CallTextToSpeech;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getTtsLocalString(I)Ljava/lang/String;
    .locals 7
    .parameter "resId"

    .prologue
    .line 713
    iget-object v4, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 714
    iget-object v4, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    .line 715
    .local v0, currentLang:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 717
    .local v3, strings:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08006d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 720
    .local v2, langs:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 721
    aget-object v4, v2, v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 722
    aget-object v4, v3, v1

    .line 728
    .end local v0           #currentLang:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #langs:[Ljava/lang/String;
    .end local v3           #strings:[Ljava/lang/String;
    :goto_1
    return-object v4

    .line 720
    .restart local v0       #currentLang:Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v2       #langs:[Ljava/lang/String;
    .restart local v3       #strings:[Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 726
    .end local v0           #currentLang:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #langs:[Ljava/lang/String;
    .end local v3           #strings:[Ljava/lang/String;
    :cond_1
    const-string v4, "CallTextToSpeech"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mTts="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 728
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private makeIdleTTS()V
    .locals 12

    .prologue
    const v11, 0x7f0903df

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 525
    const/4 v1, 0x0

    .line 526
    .local v1, TtsCallerInfo:Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 528
    .local v2, myHashAlarm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/phone/CallTextToSpeech;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v6, v7, :cond_0

    .line 530
    const-string v6, "feature_kor"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 531
    const-string v6, "streamType"

    iget-object v7, p0, Lcom/android/phone/CallTextToSpeech;->DEFAULT_TTS_STREAM_DURING_CALL:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    :goto_0
    const-string v6, "utteranceId"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TTS ended : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    iget-object v6, p0, Lcom/android/phone/CallTextToSpeech;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->getCallerName(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v1

    .line 539
    if-nez v1, :cond_2

    .line 540
    const-string v6, "CallTextToSpeech"

    const-string v7, "TTS_IDLE : callerinfo is null"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-virtual {p0}, Lcom/android/phone/CallTextToSpeech;->stopTts()V

    .line 584
    :cond_0
    :goto_1
    return-void

    .line 534
    :cond_1
    const-string v6, "streamType"

    iget-object v7, p0, Lcom/android/phone/CallTextToSpeech;->DEFAULT_TTS_STREAM:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 549
    :cond_2
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isCheckInvalidTypeClassPhoneNumber(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 550
    invoke-direct {p0, v1}, Lcom/android/phone/CallTextToSpeech;->formatTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 552
    :cond_3
    new-array v5, v10, [Ljava/lang/String;

    aput-object v1, v5, v9

    .line 556
    .local v5, values:[Ljava/lang/String;
    const-string v6, "feature_chn"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "feature_hktw"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 558
    :cond_4
    const v6, 0x7f08006b

    invoke-direct {p0, v6}, Lcom/android/phone/CallTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v4

    .line 559
    .local v4, retString:Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 560
    new-array v6, v10, [Ljava/lang/Object;

    aput-object v1, v6, v9

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 581
    .end local v4           #retString:Ljava/lang/String;
    .local v0, TTSCombinedString:Ljava/lang/CharSequence;
    :goto_2
    iget-object v6, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v9, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 582
    iget-object v6, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v7, p0, Lcom/android/phone/CallTextToSpeech;->mTtsListener:Lcom/android/phone/CallTextToSpeech$TtsListener;

    invoke-virtual {v6, v7}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    goto :goto_1

    .line 562
    .end local v0           #TTSCombinedString:Ljava/lang/CharSequence;
    .restart local v4       #retString:Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    sget-object v7, Lcom/android/phone/CallTextToSpeech;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v6, v7, v5}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0       #TTSCombinedString:Ljava/lang/CharSequence;
    goto :goto_2

    .line 565
    .end local v0           #TTSCombinedString:Ljava/lang/CharSequence;
    .end local v4           #retString:Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsCommon;->isVoiceControlOnForIncomingCall(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "enhanced_driving_mode"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 566
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setVoicetalkLocale()Ljava/util/Locale;

    move-result-object v3

    .line 568
    .local v3, previousLocale:Ljava/util/Locale;
    iget-object v6, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    const v7, 0x7f090801

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    sget-object v7, Lcom/android/phone/CallTextToSpeech;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v6, v7, v5}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 576
    .restart local v0       #TTSCombinedString:Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->setConfigurationLocale(Ljava/util/Locale;)Ljava/util/Locale;

    goto :goto_2

    .line 578
    .end local v0           #TTSCombinedString:Ljava/lang/CharSequence;
    .end local v3           #previousLocale:Ljava/util/Locale;
    :cond_7
    iget-object v6, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    sget-object v7, Lcom/android/phone/CallTextToSpeech;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v6, v7, v5}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0       #TTSCombinedString:Ljava/lang/CharSequence;
    goto :goto_2
.end method

.method private maybeUpdateTtsLanguage(Ljava/lang/String;)V
    .locals 7
    .parameter "currentEngine"

    .prologue
    .line 697
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v4, :cond_0

    .line 698
    iget-object v4, p0, Lcom/android/phone/CallTextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v4, p1}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 699
    .local v2, localeString:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 700
    invoke-static {v2}, Landroid/speech/tts/TtsEngines;->parseLocalePref(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 701
    .local v1, locale:[Ljava/lang/String;
    new-instance v3, Ljava/util/Locale;

    const/4 v4, 0x0

    aget-object v4, v1, v4

    const/4 v5, 0x1

    aget-object v5, v1, v5

    const/4 v6, 0x2

    aget-object v6, v1, v6

    invoke-direct {v3, v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    .local v3, newLocale:Ljava/util/Locale;
    iget-object v4, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v0

    .line 704
    .local v0, engineLocale:Ljava/util/Locale;
    invoke-virtual {v3, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 706
    iget-object v4, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4, v3}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 710
    .end local v0           #engineLocale:Ljava/util/Locale;
    .end local v1           #locale:[Ljava/lang/String;
    .end local v2           #localeString:Ljava/lang/String;
    .end local v3           #newLocale:Ljava/util/Locale;
    :cond_0
    return-void
.end method

.method private resetVolumeForTts(I)V
    .locals 6
    .parameter "TtsId"

    .prologue
    const/4 v5, 0x5

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 659
    packed-switch p1, :pswitch_data_0

    .line 694
    :cond_0
    :goto_0
    return-void

    .line 662
    :pswitch_0
    iget v0, p0, Lcom/android/phone/CallTextToSpeech;->mOriginTtsVolume:I

    if-eq v0, v3, :cond_1

    .line 663
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/phone/CallTextToSpeech;->mOriginTtsVolume:I

    invoke-virtual {v0, v5, v1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 664
    iput v3, p0, Lcom/android/phone/CallTextToSpeech;->mOriginTtsVolume:I

    .line 667
    :cond_1
    iget v0, p0, Lcom/android/phone/CallTextToSpeech;->mOriginRingVolume:I

    if-eq v0, v3, :cond_2

    .line 668
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/phone/CallTextToSpeech;->mOriginRingVolume:I

    invoke-virtual {v0, v2, v1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 669
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2, v4}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 670
    iput v3, p0, Lcom/android/phone/CallTextToSpeech;->mOriginRingVolume:I

    .line 672
    :cond_2
    iput v4, p0, Lcom/android/phone/CallTextToSpeech;->mFadeInUpdateDelay:I

    .line 673
    iput v4, p0, Lcom/android/phone/CallTextToSpeech;->mFadeOutUpdateDelay:I

    .line 674
    iput v3, p0, Lcom/android/phone/CallTextToSpeech;->mCurrentRingtoneVolume:I

    .line 675
    iput v4, p0, Lcom/android/phone/CallTextToSpeech;->mTtsRepeatCount:I

    .line 676
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 677
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 678
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 683
    :pswitch_1
    iget v0, p0, Lcom/android/phone/CallTextToSpeech;->mOriginNotiVolume:I

    if-eq v0, v3, :cond_0

    .line 684
    const-string v0, "CallTextToSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetVolumeForTts : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/CallTextToSpeech;->mOriginNotiVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 685
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/phone/CallTextToSpeech;->mOriginNotiVolume:I

    invoke-virtual {v0, v5, v1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 687
    iput v3, p0, Lcom/android/phone/CallTextToSpeech;->mOriginNotiVolume:I

    goto :goto_0

    .line 659
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private setVolumeForTts(I)V
    .locals 6
    .parameter "TtsId"

    .prologue
    const/4 v0, 0x6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x5

    .line 620
    packed-switch p1, :pswitch_data_0

    .line 655
    :goto_0
    return-void

    .line 623
    :pswitch_0
    iget v1, p0, Lcom/android/phone/CallTextToSpeech;->mOriginTtsVolume:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 624
    iget-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CallTextToSpeech;->mOriginTtsVolume:I

    .line 626
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CallTextToSpeech;->mOriginRingVolume:I

    .line 628
    iget v1, p0, Lcom/android/phone/CallTextToSpeech;->mOriginRingVolume:I

    if-ge v1, v0, :cond_1

    iget v0, p0, Lcom/android/phone/CallTextToSpeech;->mOriginRingVolume:I

    :cond_1
    iput v0, p0, Lcom/android/phone/CallTextToSpeech;->mCurrentRingtoneVolume:I

    .line 632
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    invoke-virtual {v0, v3, v1, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 635
    const-string v0, "CallTextToSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolumeForTts : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 638
    const/16 v0, 0xfa0

    iget v1, p0, Lcom/android/phone/CallTextToSpeech;->mOriginRingVolume:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/phone/CallTextToSpeech;->mFadeInUpdateDelay:I

    .line 639
    const/16 v0, 0x3e8

    iget v1, p0, Lcom/android/phone/CallTextToSpeech;->mOriginRingVolume:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/phone/CallTextToSpeech;->mFadeOutUpdateDelay:I

    .line 640
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    iget v2, p0, Lcom/android/phone/CallTextToSpeech;->mFadeOutUpdateDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 647
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallTextToSpeech;->mOriginNotiVolume:I

    .line 648
    const-string v0, "CallTextToSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolumeForTts : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/CallTextToSpeech;->mOriginNotiVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 649
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3, v4, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_0

    .line 620
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private speakTts(I)V
    .locals 13
    .parameter "TtsId"

    .prologue
    .line 308
    const-string v10, "CallTextToSpeech"

    const-string v11, "Getting into speak TTS"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 310
    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v10, :cond_0

    iget-boolean v10, p0, Lcom/android/phone/CallTextToSpeech;->IsTtsInitiated:Z

    if-eqz v10, :cond_0

    .line 311
    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v10}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 313
    const/4 v10, 0x1

    if-eq p1, v10, :cond_1

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    const-string v10, "feature_chn"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "feature_hktw"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 318
    :cond_2
    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v10}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v3

    .line 320
    .local v3, currentEngine:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 321
    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v10}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v3

    .line 323
    :cond_3
    new-instance v10, Landroid/speech/tts/TtsEngines;

    iget-object v11, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 324
    invoke-direct {p0, v3}, Lcom/android/phone/CallTextToSpeech;->maybeUpdateTtsLanguage(Ljava/lang/String;)V

    .line 325
    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v10}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v4

    .line 327
    .local v4, currentLocale:Ljava/util/Locale;
    if-nez v4, :cond_5

    .line 328
    const-string v10, "CallTextToSpeech"

    const-string v11, "mTts.getLanguage() returns null"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 330
    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v5

    .line 331
    .local v5, languageResult:I
    const/4 v10, -0x2

    if-eq v5, v10, :cond_4

    const/4 v10, -0x1

    if-ne v5, v10, :cond_5

    .line 333
    :cond_4
    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 334
    const-string v10, "CallTextToSpeech"

    const-string v11, "TTS cannot use system language, using Locale.US instead"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 339
    .end local v3           #currentEngine:Ljava/lang/String;
    .end local v4           #currentLocale:Ljava/util/Locale;
    .end local v5           #languageResult:I
    :cond_5
    const/4 v1, 0x0

    .line 340
    .local v1, TtsCallerInfo:Ljava/lang/String;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 342
    .local v6, myHashAlarm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 344
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/CallTextToSpeech;->setVolumeForTts(I)V

    goto :goto_0

    .line 350
    :pswitch_1
    const-string v10, "ims_rcs"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 351
    iget v10, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-direct {p0, v10}, Lcom/android/phone/CallTextToSpeech;->setVolumeForTts(I)V

    .line 353
    const/4 v0, 0x0

    .line 354
    .local v0, TTSCombinedString:Ljava/lang/CharSequence;
    const-string v10, "streamType"

    iget-object v11, p0, Lcom/android/phone/CallTextToSpeech;->DEFAULT_TTS_STREAM_DURING_CALL:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string v10, "utteranceId"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TTS ended : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->getCallerName(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v1

    .line 360
    if-nez v1, :cond_6

    .line 361
    const-string v10, "CallTextToSpeech"

    const-string v11, "TTS_DURING_CALL : callerinfo is null"

    invoke-static {v10, v11}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {p0}, Lcom/android/phone/CallTextToSpeech;->stopTts()V

    goto/16 :goto_0

    .line 366
    :cond_6
    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/phone/RcsShare;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/phone/RcsShare$SessionState;

    move-result-object v10

    iget v10, v10, Lcom/android/phone/RcsShare$SessionState;->mType:I

    invoke-static {v10}, Lcom/android/phone/RcsTransferConstants$SessionType;->getFromInt(I)Lcom/android/phone/RcsTransferConstants$SessionType;

    move-result-object v8

    .line 367
    .local v8, sessionType:Lcom/android/phone/RcsTransferConstants$SessionType;
    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v10, v1, v8}, Lcom/android/phone/RcsShare;->getInvitationText(Landroid/content/res/Resources;Ljava/lang/String;Lcom/android/phone/RcsTransferConstants$SessionType;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 368
    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v6}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 369
    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v11, p0, Lcom/android/phone/CallTextToSpeech;->mTtsListener:Lcom/android/phone/CallTextToSpeech$TtsListener;

    invoke-virtual {v10, v11}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    goto/16 :goto_0

    .line 373
    .end local v0           #TTSCombinedString:Ljava/lang/CharSequence;
    .end local v8           #sessionType:Lcom/android/phone/RcsTransferConstants$SessionType;
    :pswitch_2
    const-string v10, "ims_rcs"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 374
    iget v10, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-direct {p0, v10}, Lcom/android/phone/CallTextToSpeech;->setVolumeForTts(I)V

    .line 376
    const/4 v0, 0x0

    .line 377
    .restart local v0       #TTSCombinedString:Ljava/lang/CharSequence;
    const-string v10, "streamType"

    iget-object v11, p0, Lcom/android/phone/CallTextToSpeech;->DEFAULT_TTS_STREAM_DURING_CALL:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const-string v10, "utteranceId"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TTS ended : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/CallTextToSpeech;->mDisplayName:Ljava/lang/String;

    sget-object v12, Lcom/android/phone/RcsTransferConstants$SessionType;->IM:Lcom/android/phone/RcsTransferConstants$SessionType;

    invoke-static {v10, v11, v12}, Lcom/android/phone/RcsShare;->getInvitationText(Landroid/content/res/Resources;Ljava/lang/String;Lcom/android/phone/RcsTransferConstants$SessionType;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 383
    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v6}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 384
    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v11, p0, Lcom/android/phone/CallTextToSpeech;->mTtsListener:Lcom/android/phone/CallTextToSpeech$TtsListener;

    invoke-virtual {v10, v11}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    goto/16 :goto_0

    .line 388
    .end local v0           #TTSCombinedString:Ljava/lang/CharSequence;
    :pswitch_3
    const-string v10, "ims_rcs"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 389
    iget v10, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-direct {p0, v10}, Lcom/android/phone/CallTextToSpeech;->setVolumeForTts(I)V

    .line 391
    const/4 v0, 0x0

    .line 392
    .restart local v0       #TTSCombinedString:Ljava/lang/CharSequence;
    const-string v10, "streamType"

    iget-object v11, p0, Lcom/android/phone/CallTextToSpeech;->DEFAULT_TTS_STREAM_DURING_CALL:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    const-string v10, "utteranceId"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TTS ended : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/CallTextToSpeech;->mDisplayName:Ljava/lang/String;

    sget-object v12, Lcom/android/phone/RcsTransferConstants$SessionType;->FILE_TRANSFER:Lcom/android/phone/RcsTransferConstants$SessionType;

    invoke-static {v10, v11, v12}, Lcom/android/phone/RcsShare;->getInvitationText(Landroid/content/res/Resources;Ljava/lang/String;Lcom/android/phone/RcsTransferConstants$SessionType;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 398
    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v6}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 399
    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v11, p0, Lcom/android/phone/CallTextToSpeech;->mTtsListener:Lcom/android/phone/CallTextToSpeech$TtsListener;

    invoke-virtual {v10, v11}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    goto/16 :goto_0

    .line 403
    .end local v0           #TTSCombinedString:Ljava/lang/CharSequence;
    :pswitch_4
    const-string v10, "ims_rcs"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 404
    iget v10, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-direct {p0, v10}, Lcom/android/phone/CallTextToSpeech;->setVolumeForTts(I)V

    .line 406
    const/4 v0, 0x0

    .line 407
    .restart local v0       #TTSCombinedString:Ljava/lang/CharSequence;
    const-string v10, "streamType"

    iget-object v11, p0, Lcom/android/phone/CallTextToSpeech;->DEFAULT_TTS_STREAM_DURING_CALL:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    const-string v10, "utteranceId"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TTS ended : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/CallTextToSpeech;->mDisplayName:Ljava/lang/String;

    sget-object v12, Lcom/android/phone/RcsTransferConstants$SessionType;->IM_GROUP:Lcom/android/phone/RcsTransferConstants$SessionType;

    invoke-static {v10, v11, v12}, Lcom/android/phone/RcsShare;->getInvitationText(Landroid/content/res/Resources;Ljava/lang/String;Lcom/android/phone/RcsTransferConstants$SessionType;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 413
    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v6}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 414
    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v11, p0, Lcom/android/phone/CallTextToSpeech;->mTtsListener:Lcom/android/phone/CallTextToSpeech$TtsListener;

    invoke-virtual {v10, v11}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    goto/16 :goto_0

    .line 422
    .end local v0           #TTSCombinedString:Ljava/lang/CharSequence;
    :pswitch_5
    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v10, v11, :cond_0

    .line 423
    invoke-direct {p0, p1}, Lcom/android/phone/CallTextToSpeech;->setVolumeForTts(I)V

    .line 425
    const/4 v0, 0x0

    .line 426
    .restart local v0       #TTSCombinedString:Ljava/lang/CharSequence;
    const-string v10, "streamType"

    iget-object v11, p0, Lcom/android/phone/CallTextToSpeech;->DEFAULT_TTS_STREAM_DURING_CALL:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    const-string v10, "utteranceId"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TTS ended : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->getCallerName(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v1

    .line 432
    if-nez v1, :cond_7

    .line 433
    const-string v10, "CallTextToSpeech"

    const-string v11, "TTS_DURING_CALL : callerinfo is null"

    invoke-static {v10, v11}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual {p0}, Lcom/android/phone/CallTextToSpeech;->stopTts()V

    goto/16 :goto_0

    .line 439
    :cond_7
    const-string v10, "feature_chn"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 440
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isCheckInvalidTypeClassPhoneNumber(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 441
    invoke-direct {p0, v1}, Lcom/android/phone/CallTextToSpeech;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 450
    :cond_8
    :goto_1
    const/4 v10, 0x1

    new-array v9, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    .line 454
    .local v9, values:[Ljava/lang/String;
    const-string v10, "feature_chn"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    const-string v10, "feature_hktw"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 455
    :cond_9
    const v10, 0x7f08006b

    invoke-direct {p0, v10}, Lcom/android/phone/CallTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v7

    .line 456
    .local v7, retString:Ljava/lang/String;
    if-eqz v7, :cond_b

    .line 457
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 466
    .end local v7           #retString:Ljava/lang/String;
    :goto_2
    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v6}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 468
    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v11, p0, Lcom/android/phone/CallTextToSpeech;->mTtsListener:Lcom/android/phone/CallTextToSpeech$TtsListener;

    invoke-virtual {v10, v11}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    goto/16 :goto_0

    .line 446
    .end local v9           #values:[Ljava/lang/String;
    :cond_a
    const-string v10, "-"

    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 447
    invoke-direct {p0, v1}, Lcom/android/phone/CallTextToSpeech;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 459
    .restart local v7       #retString:Ljava/lang/String;
    .restart local v9       #values:[Ljava/lang/String;
    :cond_b
    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    const v11, 0x7f0903df

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    sget-object v11, Lcom/android/phone/CallTextToSpeech;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v10, v11, v9}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2

    .line 463
    .end local v7           #retString:Ljava/lang/String;
    :cond_c
    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    const v11, 0x7f0903df

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    sget-object v11, Lcom/android/phone/CallTextToSpeech;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v10, v11, v9}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2

    .line 474
    .end local v0           #TTSCombinedString:Ljava/lang/CharSequence;
    .end local v9           #values:[Ljava/lang/String;
    :pswitch_6
    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v10, v11, :cond_e

    .line 475
    iget v10, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-direct {p0, v10}, Lcom/android/phone/CallTextToSpeech;->setVolumeForTts(I)V

    .line 477
    const-string v10, "streamType"

    iget-object v11, p0, Lcom/android/phone/CallTextToSpeech;->DEFAULT_TTS_STREAM_DURING_CALL:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    :goto_3
    const-string v10, "utteranceId"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TTS ended : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    const-string v10, "feature_chn"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_d

    const-string v10, "feature_hktw"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 485
    :cond_d
    const v10, 0x7f08006c

    invoke-direct {p0, v10}, Lcom/android/phone/CallTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v7

    .line 486
    .restart local v7       #retString:Ljava/lang/String;
    if-eqz v7, :cond_f

    .line 487
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/CallTextToSpeech;->NewVoicemail:Ljava/lang/String;

    .line 494
    .end local v7           #retString:Ljava/lang/String;
    :goto_4
    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v11, p0, Lcom/android/phone/CallTextToSpeech;->NewVoicemail:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v6}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 495
    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v11, p0, Lcom/android/phone/CallTextToSpeech;->mTtsListener:Lcom/android/phone/CallTextToSpeech$TtsListener;

    invoke-virtual {v10, v11}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    goto/16 :goto_0

    .line 480
    :cond_e
    const-string v10, "streamType"

    iget-object v11, p0, Lcom/android/phone/CallTextToSpeech;->DEFAULT_TTS_STREAM:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 489
    .restart local v7       #retString:Ljava/lang/String;
    :cond_f
    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    const v11, 0x7f090193

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/CallTextToSpeech;->NewVoicemail:Ljava/lang/String;

    goto :goto_4

    .line 492
    .end local v7           #retString:Ljava/lang/String;
    :cond_10
    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    const v11, 0x7f090193

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/CallTextToSpeech;->NewVoicemail:Ljava/lang/String;

    goto :goto_4

    .line 500
    :pswitch_7
    const/4 v10, 0x2

    invoke-direct {p0, v10}, Lcom/android/phone/CallTextToSpeech;->setVolumeForTts(I)V

    .line 501
    const/4 v0, 0x0

    .line 502
    .restart local v0       #TTSCombinedString:Ljava/lang/CharSequence;
    const-string v10, "streamType"

    iget-object v11, p0, Lcom/android/phone/CallTextToSpeech;->DEFAULT_TTS_STREAM_DURING_CALL:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    const-string v10, "utteranceId"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TTS ended : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    const/4 v2, 0x0

    .line 508
    .local v2, call_pose:Ljava/lang/String;
    const/16 v10, 0x8

    if-ne p1, v10, :cond_11

    .line 509
    const-string v2, "left"

    .line 513
    :goto_5
    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v11, 0x0

    invoke-virtual {v10, v2, v11, v6}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 514
    iget-object v10, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v11, p0, Lcom/android/phone/CallTextToSpeech;->mTtsListener:Lcom/android/phone/CallTextToSpeech$TtsListener;

    invoke-virtual {v10, v11}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    goto/16 :goto_0

    .line 511
    :cond_11
    const-string v2, "right"

    goto :goto_5

    .line 342
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public stopTts()V
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1

    .line 607
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 612
    iget v0, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-direct {p0, v0}, Lcom/android/phone/CallTextToSpeech;->resetVolumeForTts(I)V

    .line 613
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallTextToSpeech;->IsTtsInitiated:Z

    .line 614
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CallTextToSpeech;->mInstance:Lcom/android/phone/CallTextToSpeech;

    .line 616
    :cond_1
    return-void
.end method

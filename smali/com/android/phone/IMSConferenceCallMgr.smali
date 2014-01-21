.class public Lcom/android/phone/IMSConferenceCallMgr;
.super Ljava/lang/Object;
.source "IMSConferenceCallMgr.java"

# interfaces
.implements Lcom/android/phone/CallTime$OnTickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/IMSConferenceCallMgr$Participant;,
        Lcom/android/phone/IMSConferenceCallMgr$State;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static mDirectConfCall:Z

.field private static mToastObj:Landroid/widget/Toast;

.field private static mainActivity:Lcom/android/phone/IMSConferenceCallMain;

.field private static sInstance:Lcom/android/phone/IMSConferenceCallMgr;


# instance fields
.field public lastLogCount:I

.field public lastLogNumber:Ljava/lang/String;

.field private mCallTime:Lcom/android/phone/CallTime;

.field private final mContext:Landroid/content/Context;

.field private mParticipantsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/IMSConferenceCallMgr$Participant;",
            ">;"
        }
    .end annotation
.end field

.field private mTimerRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 69
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/IMSConferenceCallMgr;->DBG:Z

    .line 75
    sput-object v2, Lcom/android/phone/IMSConferenceCallMgr;->mainActivity:Lcom/android/phone/IMSConferenceCallMain;

    .line 79
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/IMSConferenceCallMgr;->mDirectConfCall:Z

    .line 820
    sput-object v2, Lcom/android/phone/IMSConferenceCallMgr;->mToastObj:Landroid/widget/Toast;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->lastLogNumber:Ljava/lang/String;

    .line 77
    iput v1, p0, Lcom/android/phone/IMSConferenceCallMgr;->lastLogCount:I

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mCallTime:Lcom/android/phone/CallTime;

    .line 81
    iput-boolean v1, p0, Lcom/android/phone/IMSConferenceCallMgr;->mTimerRunning:Z

    .line 142
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mContext:Landroid/content/Context;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    .line 144
    const-string v0, "ims_conference_voice"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Lcom/android/phone/CallTime;

    invoke-direct {v0, p0}, Lcom/android/phone/CallTime;-><init>(Lcom/android/phone/CallTime$OnTickListener;)V

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mCallTime:Lcom/android/phone/CallTime;

    .line 147
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/IMSConferenceCallMgr;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/phone/IMSConferenceCallMgr;->getContactImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/IMSConferenceCallMgr;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/IMSConferenceCallMgr;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/phone/IMSConferenceCallMgr;->log(Ljava/lang/String;)V

    return-void
.end method

.method private alreadyAddedUser(Ljava/lang/String;)Z
    .locals 7
    .parameter "number"

    .prologue
    const/4 v4, 0x1

    .line 795
    const-string v5, "alreadyAddedUser enter"

    invoke-direct {p0, v5}, Lcom/android/phone/IMSConferenceCallMgr;->log(Ljava/lang/String;)V

    .line 797
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 798
    invoke-virtual {p0, v0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipant(I)Lcom/android/phone/IMSConferenceCallMgr$Participant;

    move-result-object v1

    .line 799
    .local v1, info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    if-nez v1, :cond_1

    .line 797
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 802
    :cond_1
    iget-object v5, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 803
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "alreadyAddedUser ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") : TRUE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 817
    .end local v1           #info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    :goto_1
    return v4

    .line 807
    .restart local v1       #info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    :cond_2
    iget-object v5, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/phone/PhoneUtilsIms;->addPrefixIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 808
    .local v2, numberFromList:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/phone/PhoneUtilsIms;->addPrefixIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 810
    .local v3, prefixedNumber:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 811
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "alreadyAddedUser ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") : TRUE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 812
    invoke-virtual {v1, v2}, Lcom/android/phone/IMSConferenceCallMgr$Participant;->renewNumber(Ljava/lang/String;)V

    goto :goto_1

    .line 817
    .end local v1           #info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    .end local v2           #numberFromList:Ljava/lang/String;
    .end local v3           #prefixedNumber:Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private englog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1057
    sget-boolean v0, Lcom/android/phone/IMSConferenceCallMgr;->DBG:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/phone/IMSConferenceCallMgr;->log(Ljava/lang/String;)V

    .line 1058
    :cond_0
    return-void
.end method

.method private getContactImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "photoUri"

    .prologue
    const v6, 0x7f0201db

    .line 979
    const/4 v3, 0x0

    .line 980
    .local v3, photoBm:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 982
    .local v0, d:Landroid/graphics/drawable/Drawable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getContactImage] enter photoUri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 984
    if-eqz p1, :cond_1

    .line 985
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/IMSConferenceCallMgr;->loadPhoto(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 986
    if-eqz v3, :cond_0

    .line 987
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getContactImage] bitmap size : width["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] height["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 990
    :try_start_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/phone/IMSConferenceCallMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .local v1, d:Landroid/graphics/drawable/Drawable;
    move-object v0, v1

    .line 1000
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 991
    :catch_0
    move-exception v2

    .line 992
    .local v2, ex:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading Admin wallpaper EX:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/IMSConferenceCallMgr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 995
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_0
    iget-object v4, p0, Lcom/android/phone/IMSConferenceCallMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 998
    :cond_1
    iget-object v4, p0, Lcom/android/phone/IMSConferenceCallMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/phone/IMSConferenceCallMgr;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr;->sInstance:Lcom/android/phone/IMSConferenceCallMgr;

    if-nez v0, :cond_0

    .line 137
    invoke-static {}, Lcom/android/phone/IMSConferenceCallMgr;->init()Lcom/android/phone/IMSConferenceCallMgr;

    move-result-object v0

    .line 138
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr;->sInstance:Lcom/android/phone/IMSConferenceCallMgr;

    goto :goto_0
.end method

.method static init()Lcom/android/phone/IMSConferenceCallMgr;
    .locals 4

    .prologue
    .line 125
    const-class v1, Lcom/android/phone/IMSConferenceCallMgr;

    monitor-enter v1

    .line 126
    :try_start_0
    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr;->sInstance:Lcom/android/phone/IMSConferenceCallMgr;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/android/phone/IMSConferenceCallMgr;

    invoke-direct {v0}, Lcom/android/phone/IMSConferenceCallMgr;-><init>()V

    sput-object v0, Lcom/android/phone/IMSConferenceCallMgr;->sInstance:Lcom/android/phone/IMSConferenceCallMgr;

    .line 131
    :goto_0
    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr;->sInstance:Lcom/android/phone/IMSConferenceCallMgr;

    monitor-exit v1

    return-object v0

    .line 129
    :cond_0
    const-string v0, "[IMSConferenceCallMgr]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/IMSConferenceCallMgr;->sInstance:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isDirectConfCall()Z
    .locals 1

    .prologue
    .line 930
    sget-boolean v0, Lcom/android/phone/IMSConferenceCallMgr;->mDirectConfCall:Z

    return v0
.end method

.method private loadPhoto(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "uri"

    .prologue
    .line 1004
    const/4 v3, 0x0

    .line 1005
    .local v3, bitmap:Landroid/graphics/Bitmap;
    iget-object v9, p0, Lcom/android/phone/IMSConferenceCallMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v1, v9, Landroid/util/DisplayMetrics;->density:F

    .line 1006
    .local v1, DENSITY:F
    const/high16 v9, 0x4238

    mul-float/2addr v9, v1

    float-to-int v7, v9

    .line 1008
    .local v7, reSizeHeight:I
    const/16 v0, 0x4000

    .line 1009
    .local v0, BUFFER_SIZE:I
    const/16 v9, 0x4000

    new-array v6, v9, [B

    .line 1012
    .local v6, mBuffer:[B
    :try_start_0
    iget-object v9, p0, Lcom/android/phone/IMSConferenceCallMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 1013
    .local v5, is:Ljava/io/InputStream;
    if-eqz v5, :cond_2

    .line 1014
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1017
    .local v2, baos:Ljava/io/ByteArrayOutputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, size:I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 1018
    const/4 v9, 0x0

    invoke-virtual {v2, v6, v9, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1021
    .end local v8           #size:I
    :catchall_0
    move-exception v9

    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    throw v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1028
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v5           #is:Ljava/io/InputStream;
    :catch_0
    move-exception v4

    .line 1029
    .local v4, ex:Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot load photo "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/IMSConferenceCallMgr;->log(Ljava/lang/String;)V

    .line 1032
    .end local v4           #ex:Ljava/lang/Exception;
    :goto_1
    if-eqz v3, :cond_0

    .line 1033
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[loadPhoto] width["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] height["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 1034
    invoke-direct {p0, v3, v7}, Lcom/android/phone/IMSConferenceCallMgr;->reSizeBitMap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1037
    .end local v3           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    return-object v3

    .line 1021
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #bitmap:Landroid/graphics/Bitmap;
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v8       #size:I
    :cond_1
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 1023
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    array-length v11, v11

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1024
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_1

    .line 1026
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v8           #size:I
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot load photo "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/IMSConferenceCallMgr;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1061
    const-string v0, "[IMSConferenceCallMgr]"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    return-void
.end method

.method private reSizeBitMap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "src"
    .parameter "dstHeight"

    .prologue
    const/high16 v5, 0x42c8

    .line 1041
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v3, v4

    .line 1042
    .local v3, width:F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v0, v4

    .line 1045
    .local v0, height:F
    int-to-float v4, p2

    cmpl-float v4, v0, v4

    if-lez v4, :cond_0

    .line 1047
    div-float v1, v0, v5

    .line 1048
    .local v1, percente:F
    int-to-float v4, p2

    div-float v2, v4, v1

    .line 1049
    .local v2, scale:F
    div-float v4, v2, v5

    mul-float/2addr v3, v4

    .line 1050
    div-float v4, v2, v5

    mul-float/2addr v0, v4

    .line 1053
    .end local v1           #percente:F
    .end local v2           #scale:F
    :cond_0
    float-to-int v4, v3

    float-to-int v5, v0

    const/4 v6, 0x1

    invoke-static {p1, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4
.end method

.method public static setDirectConfCall(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 934
    sput-boolean p0, Lcom/android/phone/IMSConferenceCallMgr;->mDirectConfCall:Z

    .line 935
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 830
    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr;->mToastObj:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 831
    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr;->mToastObj:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 836
    :goto_0
    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr;->mToastObj:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 837
    return-void

    .line 833
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/phone/IMSConferenceCallMgr;->mToastObj:Landroid/widget/Toast;

    goto :goto_0
.end method


# virtual methods
.method public addParticipant(Ljava/lang/String;Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)Z
    .locals 4
    .parameter "number"
    .parameter "state"
    .parameter "conn"

    .prologue
    const/4 v1, 0x1

    .line 295
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v1, :cond_0

    invoke-virtual {p2}, Lcom/android/phone/IMSConferenceCallMgr$State;->isNONE()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/android/phone/IMSConferenceCallMgr$State;->isDISCONNECTED()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 296
    :cond_0
    const-string v1, "[addParticipant] fail  here!"

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 297
    const/4 v1, 0x0

    .line 311
    :goto_0
    return v1

    .line 300
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipant(Ljava/lang/String;)Lcom/android/phone/IMSConferenceCallMgr$Participant;

    move-result-object v0

    .line 301
    .local v0, info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    if-eqz v0, :cond_2

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[addParticipant] already added number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v0, p2, p3}, Lcom/android/phone/IMSConferenceCallMgr$Participant;->update(Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)V

    .line 310
    :goto_1
    const-string v2, "addParticipant"

    invoke-virtual {v0, v2}, Lcom/android/phone/IMSConferenceCallMgr$Participant;->dump(Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_2
    new-instance v0, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    .end local v0           #info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    invoke-direct {v0, p0, p1}, Lcom/android/phone/IMSConferenceCallMgr$Participant;-><init>(Lcom/android/phone/IMSConferenceCallMgr;Ljava/lang/String;)V

    .line 306
    .restart local v0       #info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    invoke-virtual {v0, p2, p3}, Lcom/android/phone/IMSConferenceCallMgr$Participant;->update(Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)V

    .line 307
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public disconnectParticipant(Lcom/android/phone/IMSConferenceCallMgr$Participant;Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .parameter "info"
    .parameter "conn"

    .prologue
    .line 381
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 382
    .local v0, idx:I
    if-gez v0, :cond_0

    .line 388
    :goto_0
    return-void

    .line 385
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/IMSConferenceCallMgr;->saveParticipantLog(Lcom/android/phone/IMSConferenceCallMgr$Participant;Lcom/android/internal/telephony/Connection;)V

    .line 386
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 387
    const-string v1, "disconnectParticipant"

    invoke-virtual {p1, v1}, Lcom/android/phone/IMSConferenceCallMgr$Participant;->dump(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public disconnectedAllParticipants(Lcom/android/internal/telephony/Connection;)V
    .locals 4
    .parameter "conn"

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v1

    .line 422
    .local v1, nCount:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[disconnectedAllParticipants] before : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 424
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 425
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    sget-object v3, Lcom/android/phone/IMSConferenceCallMgr$State;->DISCONNECTED:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {p0, v2, v3, p1}, Lcom/android/phone/IMSConferenceCallMgr;->updateParticipant(Lcom/android/phone/IMSConferenceCallMgr$Participant;Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)Z

    .line 424
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 427
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[disconnectedAllParticipants] after  :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 428
    return-void
.end method

.method public getActiveCount()I
    .locals 5

    .prologue
    .line 494
    const/4 v0, 0x0

    .line 495
    .local v0, count:I
    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    .line 496
    .local v2, info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    iget-object v3, v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v3}, Lcom/android/phone/IMSConferenceCallMgr$State;->isACTIVE()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v3}, Lcom/android/phone/IMSConferenceCallMgr$State;->isONHOLD()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 497
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 499
    .end local v2           #info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getActiveCount] count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 500
    return v0
.end method

.method public getActiveParticipantNumberList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 567
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 569
    .local v2, participantsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 570
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 571
    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    .line 572
    .local v1, info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    iget-object v3, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v3}, Lcom/android/phone/IMSConferenceCallMgr$State;->isACTIVE()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v3}, Lcom/android/phone/IMSConferenceCallMgr$State;->isONHOLD()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 573
    :cond_0
    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    iget-object v3, v3, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 578
    .end local v0           #index:I
    .end local v1           #info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    :cond_2
    return-object v2
.end method

.method public getAliveParticipantNumberList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 582
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 584
    .local v2, participantsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 585
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 586
    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    .line 587
    .local v1, info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    iget-object v3, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v3}, Lcom/android/phone/IMSConferenceCallMgr$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 588
    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    iget-object v3, v3, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 593
    .end local v0           #index:I
    .end local v1           #info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    :cond_1
    return-object v2
.end method

.method public getAliveStateCount()I
    .locals 5

    .prologue
    .line 545
    const/4 v0, 0x0

    .line 546
    .local v0, count:I
    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    .line 547
    .local v2, info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    iget-object v3, v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v3}, Lcom/android/phone/IMSConferenceCallMgr$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 548
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 550
    .end local v2           #info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getAliveStateCount] count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 551
    return v0
.end method

.method public getDialedParticipantNumberList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 597
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 599
    .local v1, participantsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 600
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 601
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    iget-object v2, v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v2}, Lcom/android/phone/IMSConferenceCallMgr$State;->isDIALED()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 602
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    iget-object v2, v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 606
    .end local v0           #index:I
    :cond_1
    return-object v1
.end method

.method public getIDLECount()I
    .locals 5

    .prologue
    .line 503
    const/4 v0, 0x0

    .line 504
    .local v0, count:I
    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    .line 505
    .local v2, info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    iget-object v3, v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v3}, Lcom/android/phone/IMSConferenceCallMgr$State;->isIDLE()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 506
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 508
    .end local v2           #info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getIDLECount] count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 509
    return v0
.end method

.method public getIDLEParticipantNumberList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 610
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 612
    .local v1, participantsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 613
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 614
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    iget-object v2, v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v2}, Lcom/android/phone/IMSConferenceCallMgr$State;->isIDLE()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 615
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    iget-object v2, v2, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 620
    .end local v0           #index:I
    :cond_1
    return-object v1
.end method

.method public getParticipant(I)Lcom/android/phone/IMSConferenceCallMgr$Participant;
    .locals 2
    .parameter "idx"

    .prologue
    .line 479
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    .line 480
    :cond_0
    const-string v0, "[getParticipant] idx is not valid"

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 481
    const/4 v0, 0x0

    .line 486
    :goto_0
    return-object v0

    .line 483
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getParticipant] number : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    goto :goto_0
.end method

.method public getParticipant(Ljava/lang/String;)Lcom/android/phone/IMSConferenceCallMgr$Participant;
    .locals 5
    .parameter "number"

    .prologue
    const/4 v2, 0x0

    .line 465
    if-nez p1, :cond_0

    .line 466
    const-string v3, "[getParticipant] number == null"

    invoke-direct {p0, v3}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    move-object v1, v2

    .line 476
    :goto_0
    return-object v1

    .line 469
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getParticipant] number : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 471
    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    .line 472
    .local v1, info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    iget-object v3, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .end local v1           #info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    :cond_2
    move-object v1, v2

    .line 476
    goto :goto_0
.end method

.method public getParticipantNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "idx"

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 459
    const/4 v0, 0x0

    .line 461
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    iget-object v0, v0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    goto :goto_0
.end method

.method public getParticipantsCount()I
    .locals 3

    .prologue
    .line 489
    const-string v0, "[IMSConferenceCallMgr]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getParticipantsCount] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public initParticipantsList()V
    .locals 3

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 417
    const-string v0, "[IMSConferenceCallMgr]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initParticipantsList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return-void
.end method

.method public mapConfState(I)Lcom/android/phone/IMSConferenceCallMgr$State;
    .locals 3
    .parameter "notiState"

    .prologue
    .line 624
    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr$State;->INVALID:Lcom/android/phone/IMSConferenceCallMgr$State;

    .line 626
    .local v0, State:Lcom/android/phone/IMSConferenceCallMgr$State;
    packed-switch p1, :pswitch_data_0

    .line 644
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mapConfState] ignored notiState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->log(Ljava/lang/String;)V

    .line 647
    :goto_0
    return-object v0

    .line 628
    :pswitch_1
    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr$State;->ACTIVE:Lcom/android/phone/IMSConferenceCallMgr$State;

    .line 629
    goto :goto_0

    .line 632
    :pswitch_2
    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr$State;->DISCONNECTED:Lcom/android/phone/IMSConferenceCallMgr$State;

    .line 633
    goto :goto_0

    .line 636
    :pswitch_3
    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr$State;->ALERTING:Lcom/android/phone/IMSConferenceCallMgr$State;

    .line 637
    goto :goto_0

    .line 640
    :pswitch_4
    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr$State;->ONHOLD:Lcom/android/phone/IMSConferenceCallMgr$State;

    .line 641
    goto :goto_0

    .line 626
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onConferenceStateChanged()V
    .locals 1

    .prologue
    .line 758
    const-string v0, "onConferenceStateChanged  enter"

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMgr;->log(Ljava/lang/String;)V

    .line 759
    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr;->mainActivity:Lcom/android/phone/IMSConferenceCallMain;

    if-eqz v0, :cond_0

    .line 760
    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr;->mainActivity:Lcom/android/phone/IMSConferenceCallMain;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMain;->onConferenceStateChanged()V

    .line 764
    :goto_0
    return-void

    .line 762
    :cond_0
    const-string v0, "[onConferenceStateChanged] IMSConferenceCallMain activity is null"

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTickForCallTimeElapsed(J)V
    .locals 2
    .parameter "timeElapsed"

    .prologue
    .line 938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[handleTImer] onTickForCallTimeElapsed timeElapsed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/android/phone/util/PhoneDateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 939
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/IMSConferenceCallMgr;->updateElapsedTime(J)V

    .line 940
    return-void
.end method

.method public prepareDial(Lcom/android/internal/telephony/Connection;)V
    .locals 3
    .parameter "conn"

    .prologue
    .line 285
    const-string v2, "[prepareDial] ender"

    invoke-direct {p0, v2}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 286
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    .line 287
    .local v1, info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    iget-object v2, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v2}, Lcom/android/phone/IMSConferenceCallMgr$State;->isIDLE()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v2}, Lcom/android/phone/IMSConferenceCallMgr$State;->isWAITING()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    :cond_1
    sget-object v2, Lcom/android/phone/IMSConferenceCallMgr$State;->DIALING:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v1, v2, p1}, Lcom/android/phone/IMSConferenceCallMgr$Participant;->update(Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)V

    .line 289
    const-string v2, "prepareDial"

    invoke-virtual {v1, v2}, Lcom/android/phone/IMSConferenceCallMgr$Participant;->dump(Ljava/lang/String;)V

    goto :goto_0

    .line 292
    .end local v1           #info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    :cond_2
    return-void
.end method

.method public removeParticipant(Lcom/android/phone/IMSConferenceCallMgr$Participant;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 395
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 396
    .local v0, idx:I
    if-gez v0, :cond_0

    .line 401
    :goto_0
    return-void

    .line 399
    :cond_0
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 400
    const-string v1, "removeParticipant"

    invoke-virtual {p1, v1}, Lcom/android/phone/IMSConferenceCallMgr$Participant;->dump(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeParticipant(Ljava/lang/String;)V
    .locals 1
    .parameter "number"

    .prologue
    .line 391
    invoke-virtual {p0, p1}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipant(Ljava/lang/String;)Lcom/android/phone/IMSConferenceCallMgr$Participant;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/IMSConferenceCallMgr;->removeParticipant(Lcom/android/phone/IMSConferenceCallMgr$Participant;)V

    .line 392
    return-void
.end method

.method public resetLastLog()V
    .locals 1

    .prologue
    .line 775
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->lastLogNumber:Ljava/lang/String;

    .line 776
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->lastLogCount:I

    .line 777
    return-void
.end method

.method public resetParticipantsList()V
    .locals 3

    .prologue
    .line 404
    const/4 v0, 0x0

    .line 405
    .local v0, index:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 406
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    .line 407
    .local v1, info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v2}, Lcom/android/phone/IMSConferenceCallMgr$State;->isIDLE()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v2}, Lcom/android/phone/IMSConferenceCallMgr$State;->isWAITING()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 408
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->removeParticipant(Lcom/android/phone/IMSConferenceCallMgr$Participant;)V

    goto :goto_0

    .line 411
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 412
    goto :goto_0

    .line 413
    .end local v1           #info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    :cond_2
    return-void
.end method

.method public saveParticipantLog(Lcom/android/phone/IMSConferenceCallMgr$Participant;Lcom/android/internal/telephony/Connection;)V
    .locals 7
    .parameter "info"
    .parameter "conn"

    .prologue
    .line 431
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[saveParticipantLog] Number["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] CreateTime["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mCreateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] Duration["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 433
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    iget-object v2, p1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    iget-wide v3, p1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mCreateTime:J

    iget-wide v5, p1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mDuration:J

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/phone/CallNotifier;->saveParticipantLog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;JJ)V

    .line 435
    :cond_0
    return-void
.end method

.method public setActivity(Lcom/android/phone/IMSConferenceCallMain;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 150
    sput-object p1, Lcom/android/phone/IMSConferenceCallMgr;->mainActivity:Lcom/android/phone/IMSConferenceCallMain;

    .line 151
    return-void
.end method

.method public setLastLog()V
    .locals 2

    .prologue
    .line 767
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v0

    .line 768
    .local v0, nCount:I
    if-lez v0, :cond_0

    .line 769
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantNumber(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/IMSConferenceCallMgr;->lastLogNumber:Ljava/lang/String;

    .line 770
    iput v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->lastLogCount:I

    .line 772
    :cond_0
    return-void
.end method

.method public showDisconnectedToast(Ljava/lang/String;)V
    .locals 5
    .parameter "number"

    .prologue
    .line 787
    const/4 v0, 0x0

    .line 788
    .local v0, removedUserName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/phone/PhoneUtilsIms;->getCallerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 790
    if-eqz v0, :cond_0

    .line 791
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    const v2, 0x7f090764

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/PhoneGlobals;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->showToast(Ljava/lang/String;)V

    .line 793
    :cond_0
    return-void
.end method

.method public showUserMessage(ILjava/lang/String;)V
    .locals 16
    .parameter "msgType"
    .parameter "number"

    .prologue
    .line 844
    const/4 v13, -0x1

    .line 845
    .local v13, resid:I
    const-string v11, ""

    .line 846
    .local v11, error:Ljava/lang/String;
    const-string v12, ""

    .line 848
    .local v12, message:Ljava/lang/String;
    const/16 v3, 0x193

    .line 849
    .local v3, FORBIDDEN:I
    const/16 v5, 0x194

    .line 850
    .local v5, NOT_FOUND:I
    const/16 v7, 0x198

    .line 851
    .local v7, REQUEST_TIMEOUT:I
    const/16 v10, 0x1e0

    .line 852
    .local v10, TEMPORARILY_UNAVAILABLE:I
    const/16 v1, 0x1e6

    .line 853
    .local v1, BUSY_HERE:I
    const/16 v6, 0x1f3

    .line 854
    .local v6, NOT_REACHABLE:I
    const/16 v8, 0x1f4

    .line 855
    .local v8, SERVER_INTERNAL_ERROR:I
    const/16 v9, 0x1f7

    .line 856
    .local v9, SERVICE_UNAVAILABLE:I
    const/16 v2, 0x25b

    .line 857
    .local v2, DECLINE:I
    const/16 v4, 0x25e

    .line 859
    .local v4, NOT_ACCEPTABLE:I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[showUserMessage] number = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  msgType = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 861
    sparse-switch p1, :sswitch_data_0

    .line 916
    :goto_0
    const/4 v14, -0x1

    if-ne v13, v14, :cond_0

    .line 927
    :goto_1
    return-void

    .line 863
    :sswitch_0
    const-string v11, "(403)"

    .line 864
    const v13, 0x7f090867

    .line 865
    goto :goto_0

    .line 868
    :sswitch_1
    const-string v11, "(404)"

    .line 869
    const v13, 0x7f090878

    .line 870
    goto :goto_0

    .line 873
    :sswitch_2
    const-string v11, "(408)"

    .line 874
    const v13, 0x7f09088e

    .line 875
    goto :goto_0

    .line 878
    :sswitch_3
    const-string v11, "(480)"

    .line 879
    const v13, 0x7f09086c

    .line 880
    goto :goto_0

    .line 883
    :sswitch_4
    const-string v11, "(486)"

    .line 884
    const v13, 0x7f090890

    .line 885
    goto :goto_0

    .line 888
    :sswitch_5
    const-string v11, "(499)"

    .line 889
    const v13, 0x7f090891

    .line 890
    goto :goto_0

    .line 893
    :sswitch_6
    const-string v11, "(500)"

    .line 894
    const v13, 0x7f09088e

    .line 895
    goto :goto_0

    .line 898
    :sswitch_7
    const-string v11, "(503)"

    .line 899
    const v13, 0x7f09088f

    .line 900
    goto :goto_0

    .line 903
    :sswitch_8
    const-string v11, "(603)"

    .line 904
    const v13, 0x7f090875

    .line 905
    goto :goto_0

    .line 908
    :sswitch_9
    const-string v11, "(606)"

    .line 909
    const v13, 0x7f09087f

    .line 910
    goto :goto_0

    .line 920
    :cond_0
    const-string v14, ""

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 921
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/IMSConferenceCallMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 926
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/phone/IMSConferenceCallMgr;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 923
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/IMSConferenceCallMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    .line 861
    :sswitch_data_0
    .sparse-switch
        0x193 -> :sswitch_0
        0x194 -> :sswitch_1
        0x198 -> :sswitch_2
        0x1e0 -> :sswitch_3
        0x1e6 -> :sswitch_4
        0x1f3 -> :sswitch_5
        0x1f4 -> :sswitch_6
        0x1f7 -> :sswitch_7
        0x25b -> :sswitch_8
        0x25e -> :sswitch_9
    .end sparse-switch
.end method

.method startTimer(Lcom/android/internal/telephony/Call;)V
    .locals 2
    .parameter "call"

    .prologue
    .line 959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[handleTImer] startTimer mTimerRunning : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/IMSConferenceCallMgr;->mTimerRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMgr;->log(Ljava/lang/String;)V

    .line 961
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mCallTime:Lcom/android/phone/CallTime;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mTimerRunning:Z

    if-nez v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->reset()V

    .line 963
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0, p1}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 964
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->periodicUpdateTimer()Z

    .line 965
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mTimerRunning:Z

    .line 967
    :cond_0
    return-void
.end method

.method stopTimer()V
    .locals 2

    .prologue
    .line 970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[handleTImer] stopTimer mTimerRunning : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/IMSConferenceCallMgr;->mTimerRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMgr;->log(Ljava/lang/String;)V

    .line 972
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mCallTime:Lcom/android/phone/CallTime;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mTimerRunning:Z

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 974
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/IMSConferenceCallMgr;->mTimerRunning:Z

    .line 976
    :cond_0
    return-void
.end method

.method public update(Lcom/android/internal/telephony/Connection;)V
    .locals 21
    .parameter "conn"

    .prologue
    .line 678
    if-nez p1, :cond_1

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 681
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->getSIMNumber()Ljava/lang/String;

    move-result-object v15

    .line 682
    .local v15, selfNumber:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v3

    .line 683
    .local v3, callDetails:Lcom/android/internal/telephony/CallDetails;
    const-string v9, "participantlist"

    .line 684
    .local v9, key:Ljava/lang/String;
    invoke-virtual {v3, v9}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 685
    .local v13, participantlist:Ljava/lang/String;
    const-string v11, ""

    .line 686
    .local v11, newParticipants:Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[update] participantlist "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 688
    if-eqz v13, :cond_a

    const/16 v19, 0x2c

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    .line 689
    const-string v19, "\\,"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 690
    .local v4, dialStrings:[Ljava/lang/String;
    const-string v12, ""

    .line 691
    .local v12, number:Ljava/lang/String;
    array-length v10, v4

    .line 692
    .local v10, nCount:I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-lt v10, v0, :cond_0

    .line 695
    const/4 v6, -0x1

    .line 696
    .local v6, idx:I
    const/4 v5, 0x0

    .line 697
    .local v5, endIdx:I
    const/16 v18, 0x0

    .line 698
    .local v18, status:I
    const-string v16, ""

    .line 699
    .local v16, sip_error:Ljava/lang/String;
    const-string v14, ""

    .line 701
    .local v14, realNum:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, index:I
    :goto_1
    if-ge v7, v10, :cond_9

    .line 702
    aget-object v19, v4, v7

    const/16 v20, 0x3a

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 703
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v6, v0, :cond_0

    .line 706
    aget-object v19, v4, v7

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v5

    .line 707
    aget-object v19, v4, v7

    add-int/lit8 v20, v6, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 708
    aget-object v19, v4, v7

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 710
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[update] dialStrings[ "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] number : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 712
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->mapConfState(I)Lcom/android/phone/IMSConferenceCallMgr$State;

    move-result-object v17

    .line 713
    .local v17, state:Lcom/android/phone/IMSConferenceCallMgr$State;
    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/IMSConferenceCallMgr$State;->isINVALID()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 714
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[update] ignored INVALID  orginal status is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 701
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 718
    :cond_3
    const/4 v6, -0x1

    .line 719
    const-string v16, ""

    .line 720
    const-string v14, ""

    .line 722
    const/16 v19, 0x2f

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 723
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v6, v0, :cond_8

    .line 724
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 725
    add-int/lit8 v19, v6, 0x1

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 730
    :goto_3
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_5

    .line 731
    if-nez v14, :cond_4

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_5

    .line 732
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipant(Ljava/lang/String;)Lcom/android/phone/IMSConferenceCallMgr$Participant;

    move-result-object v8

    .line 734
    .local v8, info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    if-eqz v8, :cond_5

    .line 735
    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/IMSConferenceCallMgr$State;->isDISCONNECTED()Z

    move-result v19

    if-eqz v19, :cond_5

    iget-object v0, v8, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/IMSConferenceCallMgr$State;->isOutgoing()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 736
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Lcom/android/phone/IMSConferenceCallMgr;->showUserMessage(ILjava/lang/String;)V

    .line 742
    .end local v8           #info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    :cond_5
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 743
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-virtual {v0, v14, v1, v2}, Lcom/android/phone/IMSConferenceCallMgr;->updateParticipant(Ljava/lang/String;Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)Z

    .line 746
    :cond_6
    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/IMSConferenceCallMgr$State;->isDISCONNECTED()Z

    move-result v19

    if-nez v19, :cond_2

    .line 747
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_7

    .line 748
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 749
    :cond_7
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v4, v7

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_2

    .line 727
    :cond_8
    move-object v14, v12

    goto :goto_3

    .line 752
    .end local v17           #state:Lcom/android/phone/IMSConferenceCallMgr$State;
    :cond_9
    invoke-virtual {v3, v9, v11}, Lcom/android/internal/telephony/CallDetails;->setExtraValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    .end local v4           #dialStrings:[Ljava/lang/String;
    .end local v5           #endIdx:I
    .end local v6           #idx:I
    .end local v7           #index:I
    .end local v10           #nCount:I
    .end local v12           #number:Ljava/lang/String;
    .end local v14           #realNum:Ljava/lang/String;
    .end local v16           #sip_error:Ljava/lang/String;
    .end local v18           #status:I
    :cond_a
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[update] Participant count is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public updateElapsedTime(J)V
    .locals 6
    .parameter "timeElapsed"

    .prologue
    .line 943
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->getActiveCount()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    sget-object v2, Lcom/android/phone/IMSConferenceCallMgr;->mainActivity:Lcom/android/phone/IMSConferenceCallMain;

    if-nez v2, :cond_2

    .line 944
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMgr;->stopTimer()V

    .line 956
    :cond_1
    return-void

    .line 948
    :cond_2
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;

    .line 949
    .local v1, info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    iget-object v2, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v2}, Lcom/android/phone/IMSConferenceCallMgr$State;->isACTIVE()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v2}, Lcom/android/phone/IMSConferenceCallMgr$State;->isONHOLD()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 950
    :cond_4
    iget-wide v2, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mStartDuration:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long v2, p1, v2

    iput-wide v2, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mElapsedTime:J

    .line 951
    sget-object v2, Lcom/android/phone/IMSConferenceCallMgr;->mainActivity:Lcom/android/phone/IMSConferenceCallMain;

    if-eqz v2, :cond_3

    .line 952
    sget-object v2, Lcom/android/phone/IMSConferenceCallMgr;->mainActivity:Lcom/android/phone/IMSConferenceCallMain;

    invoke-virtual {v2}, Lcom/android/phone/IMSConferenceCallMain;->updateScreen()V

    goto :goto_0
.end method

.method public updateParticipant(Lcom/android/phone/IMSConferenceCallMgr$Participant;Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)Z
    .locals 1
    .parameter "info"
    .parameter "state"
    .parameter "conn"

    .prologue
    .line 315
    if-nez p1, :cond_0

    .line 316
    const-string v0, "[updateParticipant] fail  info is not valid "

    invoke-direct {p0, v0}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 317
    const/4 v0, 0x0

    .line 320
    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/phone/IMSConferenceCallMgr;->updateParticipant(Ljava/lang/String;Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)Z

    move-result v0

    goto :goto_0
.end method

.method public updateParticipant(Ljava/lang/String;Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)Z
    .locals 8
    .parameter "number"
    .parameter "state"
    .parameter "conn"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 324
    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->getSIMNumber()Ljava/lang/String;

    move-result-object v2

    .line 325
    .local v2, selfNumber:Ljava/lang/String;
    const/4 v0, -0x1

    .line 327
    .local v0, idx:I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v3, :cond_1

    .line 328
    :cond_0
    const-string v3, "[updateParticipant] fail  number is not valid "

    invoke-direct {p0, v3}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    move v3, v4

    .line 377
    :goto_0
    return v3

    .line 331
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[updateParticipant] number : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0, p1}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipant(Ljava/lang/String;)Lcom/android/phone/IMSConferenceCallMgr$Participant;

    move-result-object v1

    .line 334
    .local v1, info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    if-nez v1, :cond_5

    .line 335
    invoke-virtual {p2}, Lcom/android/phone/IMSConferenceCallMgr$State;->isNONE()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p2}, Lcom/android/phone/IMSConferenceCallMgr$State;->isDISCONNECTED()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 336
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateParticipant] already removed number : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    move v3, v4

    .line 337
    goto :goto_0

    .line 339
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/phone/IMSConferenceCallMgr;->alreadyAddedUser(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 340
    invoke-virtual {p0, p1}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipant(Ljava/lang/String;)Lcom/android/phone/IMSConferenceCallMgr$Participant;

    move-result-object v1

    .line 343
    :cond_4
    if-nez v1, :cond_5

    .line 344
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/phone/IMSConferenceCallMgr;->addParticipant(Ljava/lang/String;Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)Z

    goto :goto_0

    .line 350
    :cond_5
    invoke-virtual {p2}, Lcom/android/phone/IMSConferenceCallMgr$State;->isDISCONNECTED()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 351
    if-eqz p3, :cond_6

    invoke-virtual {p3}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 352
    iget-object v4, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v4}, Lcom/android/phone/IMSConferenceCallMgr$State;->isACTIVE()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 353
    iget-object v4, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/phone/IMSConferenceCallMgr;->showDisconnectedToast(Ljava/lang/String;)V

    .line 356
    :cond_6
    if-eqz p3, :cond_7

    invoke-virtual {p3}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 357
    invoke-virtual {p0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->removeParticipant(Lcom/android/phone/IMSConferenceCallMgr$Participant;)V

    .line 376
    :goto_1
    const-string v4, "updateParticipant"

    invoke-virtual {v1, v4}, Lcom/android/phone/IMSConferenceCallMgr$Participant;->dump(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 359
    :cond_7
    if-eqz p3, :cond_9

    iget-object v4, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v4}, Lcom/android/phone/IMSConferenceCallMgr$State;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 360
    invoke-virtual {v1, p2, p3}, Lcom/android/phone/IMSConferenceCallMgr$Participant;->update(Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)V

    .line 361
    iget-wide v4, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mCreateTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_8

    .line 362
    invoke-virtual {p0, v1, p3}, Lcom/android/phone/IMSConferenceCallMgr;->disconnectParticipant(Lcom/android/phone/IMSConferenceCallMgr$Participant;Lcom/android/internal/telephony/Connection;)V

    goto :goto_1

    .line 364
    :cond_8
    invoke-virtual {p0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->removeParticipant(Lcom/android/phone/IMSConferenceCallMgr$Participant;)V

    goto :goto_1

    .line 367
    :cond_9
    invoke-virtual {p0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->removeParticipant(Lcom/android/phone/IMSConferenceCallMgr$Participant;)V

    goto :goto_1

    .line 370
    :cond_a
    invoke-virtual {p2}, Lcom/android/phone/IMSConferenceCallMgr$State;->isNONE()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 371
    invoke-virtual {p0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->removeParticipant(Lcom/android/phone/IMSConferenceCallMgr$Participant;)V

    goto :goto_1

    .line 373
    :cond_b
    invoke-virtual {v1, p2, p3}, Lcom/android/phone/IMSConferenceCallMgr$Participant;->update(Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)V

    goto :goto_1
.end method

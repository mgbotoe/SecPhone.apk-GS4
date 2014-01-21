.class public Lcom/android/phone/callsettings/PresetImage;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "PresetImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;,
        Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;
    }
.end annotation


# static fields
.field public static final THUMBNAIL_PROJECTION_VIDEOS:[Ljava/lang/String;

.field private static final mContext:Landroid/content/Context;

.field public static mUriCamera:Landroid/net/Uri;

.field public static mUriVideos:Landroid/net/Uri;


# instance fields
.field private final INVALID_VIDEO_FILE:I

.field private final MAX_OUTPUT_X:I

.field private final MAX_OUTPUT_Y:I

.field private final NOT_ENOUGH_SPACE:I

.field private final REQUEST_ATTACH_PHOTO_FROM_CAMERA:I

.field private final REQUEST_ATTACH_VIDEO_FROM_CAMERA:I

.field private final REQUEST_PICK_PHOTO_FROM_GALLERY:I

.field private final REQUEST_PICK_VIDEO_FROM_GALLERY:I

.field private final UNABLE_TO_PLAY_VIDEO:I

.field private btnChangePreset:Landroid/widget/Button;

.field changeDialog:Landroid/app/AlertDialog;

.field isVideoContents:Z

.field private mCallerImageAlertChanged:[Ljava/lang/String;

.field private mCallerImageAlertDefault:[Ljava/lang/String;

.field private mImageButton:Landroid/widget/ImageButton;

.field outputX:I

.field outputY:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/callsettings/PresetImage;->mContext:Landroid/content/Context;

    .line 87
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/callsettings/PresetImage;->THUMBNAIL_PROJECTION_VIDEOS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 94
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/phone/callsettings/PresetImage;->REQUEST_PICK_PHOTO_FROM_GALLERY:I

    .line 96
    const/16 v0, 0x33

    iput v0, p0, Lcom/android/phone/callsettings/PresetImage;->REQUEST_PICK_VIDEO_FROM_GALLERY:I

    .line 98
    const/16 v0, 0x34

    iput v0, p0, Lcom/android/phone/callsettings/PresetImage;->REQUEST_ATTACH_PHOTO_FROM_CAMERA:I

    .line 100
    const/16 v0, 0x35

    iput v0, p0, Lcom/android/phone/callsettings/PresetImage;->REQUEST_ATTACH_VIDEO_FROM_CAMERA:I

    .line 103
    const/16 v0, 0x36

    iput v0, p0, Lcom/android/phone/callsettings/PresetImage;->UNABLE_TO_PLAY_VIDEO:I

    .line 105
    const/16 v0, 0x37

    iput v0, p0, Lcom/android/phone/callsettings/PresetImage;->NOT_ENOUGH_SPACE:I

    .line 107
    const/16 v0, 0x38

    iput v0, p0, Lcom/android/phone/callsettings/PresetImage;->INVALID_VIDEO_FILE:I

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/PresetImage;->isVideoContents:Z

    .line 124
    const/16 v0, 0x16e

    iput v0, p0, Lcom/android/phone/callsettings/PresetImage;->MAX_OUTPUT_X:I

    .line 126
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/phone/callsettings/PresetImage;->MAX_OUTPUT_Y:I

    .line 351
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/PresetImage;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/phone/callsettings/PresetImage;->mCallerImageAlertChanged:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/PresetImage;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/phone/callsettings/PresetImage;->mCallerImageAlertDefault:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/PresetImage;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/callsettings/PresetImage;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/phone/callsettings/PresetImage;->pickImageFromGallery()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/callsettings/PresetImage;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/phone/callsettings/PresetImage;->capturePicture()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/callsettings/PresetImage;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/phone/callsettings/PresetImage;->pickVideoFromGallery()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/callsettings/PresetImage;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/phone/callsettings/PresetImage;->checkRemainingSize()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/phone/callsettings/PresetImage;J)Landroid/content/Intent;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/PresetImage;->recordVideo(J)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private capturePicture()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 437
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 438
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sec.android.app.camera"

    const-string v2, "com.sec.android.app.camera.Camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    return-object v0
.end method

.method private checkRemainingSize()J
    .locals 12

    .prologue
    .line 397
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    .line 398
    .local v7, storageDirectory:Ljava/lang/String;
    new-instance v6, Landroid/os/StatFs;

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 399
    .local v6, stat:Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    int-to-long v10, v10

    mul-long v2, v8, v10

    .line 400
    .local v2, remainSize:J
    const-wide/16 v0, 0x0

    .line 401
    .local v0, margin:J
    mul-long v8, v2, v0

    sub-long v4, v2, v8

    .line 402
    .local v4, sizeLimit:J
    const-string v8, "PresetImage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checked sizeLimit is : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return-wide v4
.end method

.method private checkVideo(Landroid/net/Uri;)Z
    .locals 9
    .parameter "UriVideos"

    .prologue
    .line 465
    const/4 v8, 0x0

    .line 466
    .local v8, isVideoOk:Z
    move-object v1, p1

    .line 467
    .local v1, tempUriVideos:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 468
    .local v0, cr:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    .line 469
    const-string v2, "PresetImage"

    const-string v3, "ContentResolver is null"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const/4 v2, 0x0

    .line 493
    :goto_0
    return v2

    .line 474
    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/phone/callsettings/PresetImage;->THUMBNAIL_PROJECTION_VIDEOS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 478
    .local v6, cursorVideos:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 479
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 480
    const/4 v8, 0x1

    .line 486
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 487
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    .end local v6           #cursorVideos:Landroid/database/Cursor;
    :cond_2
    :goto_2
    const-string v2, "PresetImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Result of video validation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v8

    .line 493
    goto :goto_0

    .line 482
    .restart local v6       #cursorVideos:Landroid/database/Cursor;
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 489
    .end local v6           #cursorVideos:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 490
    .local v7, e:Ljava/lang/Exception;
    const-string v2, "PresetImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception is  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private getCropImage(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 5
    .parameter "inputPhoto"

    .prologue
    const/16 v4, 0x16e

    const/16 v3, 0x12c

    .line 443
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 444
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/android/phone/callsettings/PresetImage;->mUriCamera:Landroid/net/Uri;

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    const-string v1, "aspectX"

    iget v2, p0, Lcom/android/phone/callsettings/PresetImage;->outputX:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 447
    const-string v1, "aspectY"

    iget v2, p0, Lcom/android/phone/callsettings/PresetImage;->outputY:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 448
    const-string v1, "outputX"

    iget v2, p0, Lcom/android/phone/callsettings/PresetImage;->outputX:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 449
    const-string v1, "outputY"

    iget v2, p0, Lcom/android/phone/callsettings/PresetImage;->outputY:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 450
    const-string v1, "return-data"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 451
    return-object v0
.end method

.method private overlay(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "bmp1"
    .parameter "bmp2"

    .prologue
    const/4 v5, 0x0

    .line 825
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 826
    .local v0, bmOverlay:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 827
    .local v1, canvas:Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1, p1, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 828
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, p2, v2, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 830
    return-object v0
.end method

.method private pickImageFromGallery()Landroid/content/Intent;
    .locals 6

    .prologue
    const/16 v5, 0x16e

    const/16 v4, 0x12c

    const/4 v3, 0x1

    .line 408
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 410
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sec.android.gallery3d"

    const-string v2, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 412
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    const-string v1, "aspectX"

    iget v2, p0, Lcom/android/phone/callsettings/PresetImage;->outputX:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 415
    const-string v1, "aspectY"

    iget v2, p0, Lcom/android/phone/callsettings/PresetImage;->outputY:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 416
    const-string v1, "outputX"

    iget v2, p0, Lcom/android/phone/callsettings/PresetImage;->outputX:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 417
    const-string v1, "outputY"

    iget v2, p0, Lcom/android/phone/callsettings/PresetImage;->outputY:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 418
    const-string v1, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 419
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 420
    return-object v0
.end method

.method private pickVideoFromGallery()Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 424
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 425
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    const-string v1, "com.sec.android.gallery3d"

    const-string v2, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 429
    const-string v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    const-string v1, "only3gp"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 431
    const-string v1, "senderIsVideoCall"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 432
    const-string v1, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 433
    return-object v0
.end method

.method private recordVideo(J)Landroid/content/Intent;
    .locals 3
    .parameter "sizeLimit"

    .prologue
    .line 455
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 458
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.sizeLimit"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 459
    const-string v1, "videocall_preset"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 460
    return-object v0
.end method

.method private setImage(Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "photo"

    .prologue
    .line 656
    move-object v5, p1

    .line 657
    .local v5, selectedPhoto:Landroid/graphics/Bitmap;
    const-string v6, "PresetImage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set the Image, the selcted photo is = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    if-nez p1, :cond_0

    .line 678
    :goto_0
    return-void

    .line 662
    :cond_0
    const/4 v2, 0x0

    .line 663
    .local v2, mode:I
    :try_start_0
    const-string v6, "ims_vt_alternative_image_permission"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 664
    const/4 v2, 0x3

    .line 665
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "preset_photo.jpg"

    invoke-virtual {v6, v7, v2}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 666
    .local v1, fos:Ljava/io/FileOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x4b

    invoke-virtual {p1, v6, v7, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 667
    const-string v4, "data/data/com.android.phone/files/preset_photo.jpg"

    .line 668
    .local v4, preset_Path:Ljava/lang/String;
    const-string v3, "photo"

    .line 669
    .local v3, preset_Name:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "preset_path"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 671
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "preset_name"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 673
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 674
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v3           #preset_Name:Ljava/lang/String;
    .end local v4           #preset_Path:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 675
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 676
    const-string v6, "IOException"

    const-string v7, "e"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setVideo(Ljava/lang/String;)V
    .locals 16
    .parameter "selectedVideoPath"

    .prologue
    .line 681
    const-string v2, "PresetImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set the Video, the selcted video is = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/callsettings/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 683
    .local v1, cr:Landroid/content/ContentResolver;
    if-nez v1, :cond_0

    .line 684
    const-string v2, "PresetImage"

    const-string v3, "ContentResolver is null"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :goto_0
    return-void

    .line 688
    :cond_0
    const-wide/16 v14, -0x1

    .line 690
    .local v14, videoId:J
    :try_start_0
    sget-object v2, Lcom/android/phone/callsettings/PresetImage;->mUriVideos:Landroid/net/Uri;

    sget-object v3, Lcom/android/phone/callsettings/PresetImage;->THUMBNAIL_PROJECTION_VIDEOS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 692
    .local v7, cursorVideos:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 693
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 694
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 698
    :cond_1
    if-eqz v7, :cond_2

    .line 699
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 711
    .end local v7           #cursorVideos:Landroid/database/Cursor;
    :cond_2
    :goto_1
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 712
    .local v10, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput v2, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 714
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/callsettings/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v14, v15, v3, v10}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 717
    .local v13, video:Landroid/graphics/Bitmap;
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 718
    const/4 v2, 0x0

    const/16 v3, 0x1d

    const/16 v4, 0x90

    const/16 v5, 0x76

    invoke-static {v13, v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 720
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/callsettings/PresetImage;->outputX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/callsettings/PresetImage;->outputY:I

    const/4 v4, 0x1

    invoke-static {v13, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v13

    .line 723
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/callsettings/PresetImage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "preset_video.jpg"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v9

    .line 725
    .local v9, fos:Ljava/io/FileOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x4b

    invoke-virtual {v13, v2, v3, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 726
    const-string v12, "data/data/com.android.phone/files/preset_video.jpg"

    .line 727
    .local v12, preset_Path:Ljava/lang/String;
    const-string v11, "video"

    .line 728
    .local v11, preset_Name:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/callsettings/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preset_path"

    invoke-static {v2, v3, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 730
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/callsettings/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preset_name"

    invoke-static {v2, v3, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 732
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/callsettings/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preset_video_path"

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 734
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 735
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .end local v11           #preset_Name:Ljava/lang/String;
    .end local v12           #preset_Path:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 736
    .local v8, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 737
    const-string v2, "IOException"

    const-string v3, "e"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 739
    .end local v8           #e:Ljava/io/IOException;
    .end local v13           #video:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v8

    .line 741
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 742
    const-string v2, "Exception casued by thumnail operation"

    const-string v3, "e"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 701
    .end local v8           #e:Ljava/lang/Exception;
    .end local v10           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_2
    move-exception v8

    .line 703
    .restart local v8       #e:Ljava/lang/Exception;
    const-string v2, "PresetImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception is  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private updatePresetImage()V
    .locals 15

    .prologue
    .line 749
    const-string v12, "PresetImage"

    const-string v13, "updatePresetImage()"

    invoke-static {v12, v13}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "preset_path"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 755
    .local v10, preset_Path:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "preset_name"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 757
    .local v9, preset_Name:Ljava/lang/String;
    const-string v3, "data/data/com.android.phone/files/preset_defaultimage.jpg"

    .line 761
    .local v3, mDefaultPath:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 762
    .local v5, myResources:Landroid/content/res/Resources;
    const v12, 0x7f020516

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v2

    .line 764
    .local v2, is:Ljava/io/InputStream;
    :try_start_1
    new-instance v4, Ljava/io/File;

    const-string v12, "data/data/com.android.phone/files/preset_defaultimage.jpg"

    invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 765
    .local v4, mdefaultFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    .line 766
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string v13, "preset_defaultimage.jpg"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v7

    .line 770
    .local v7, os:Ljava/io/OutputStream;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v12

    new-array v0, v12, [B

    .line 773
    .local v0, data:[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v11

    .local v11, result:I
    const/4 v12, -0x1

    if-eq v11, v12, :cond_0

    .line 774
    const/4 v12, 0x0

    invoke-virtual {v7, v0, v12, v11}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 777
    .end local v0           #data:[B
    .end local v11           #result:I
    :catch_0
    move-exception v1

    .line 779
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 783
    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    :goto_1
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    .line 788
    .end local v4           #mdefaultFile:Ljava/io/File;
    .end local v7           #os:Ljava/io/OutputStream;
    :cond_1
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    .line 795
    .end local v2           #is:Ljava/io/InputStream;
    .end local v5           #myResources:Landroid/content/res/Resources;
    :goto_3
    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 797
    .local v6, originalImage:Landroid/graphics/Bitmap;
    if-nez v6, :cond_2

    .line 799
    move-object v10, v3

    .line 800
    const-string v9, "preset_default"

    .line 801
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "preset_name"

    invoke-static {v12, v13, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 803
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "preset_path"

    invoke-static {v12, v13, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 805
    iget-object v12, p0, Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageButton;

    const v13, 0x7f0202a7

    invoke-virtual {v12, v13}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 822
    :goto_4
    return-void

    .line 780
    .end local v6           #originalImage:Landroid/graphics/Bitmap;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v4       #mdefaultFile:Ljava/io/File;
    .restart local v5       #myResources:Landroid/content/res/Resources;
    .restart local v7       #os:Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    .line 781
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    :try_start_5
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 785
    .end local v1           #e:Landroid/content/res/Resources$NotFoundException;
    .end local v4           #mdefaultFile:Ljava/io/File;
    .end local v7           #os:Ljava/io/OutputStream;
    :catch_2
    move-exception v1

    .line 786
    .local v1, e:Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 789
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v5           #myResources:Landroid/content/res/Resources;
    :catch_3
    move-exception v1

    .line 790
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 791
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 792
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const-string v12, "PresetImage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error::Can\'t find drawable: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 807
    .end local v1           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v6       #originalImage:Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "preset_name"

    invoke-static {v12, v13, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 809
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "preset_path"

    invoke-static {v12, v13, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 812
    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 813
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020716

    invoke-static {v12, v13}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 814
    .local v8, playImg:Landroid/graphics/Bitmap;
    iget-boolean v12, p0, Lcom/android/phone/callsettings/PresetImage;->isVideoContents:Z

    if-eqz v12, :cond_3

    .line 815
    iget-object v12, p0, Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v6, v8}, Lcom/android/phone/callsettings/PresetImage;->overlay(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 816
    :cond_3
    invoke-virtual {v10, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_4

    .line 817
    iget-object v12, p0, Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageButton;

    const v13, 0x7f0202a7

    invoke-virtual {v12, v13}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_4

    .line 819
    :cond_4
    iget-object v12, p0, Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v12, v6}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4
.end method


# virtual methods
.method public displayToast(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 586
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 587
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 588
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 591
    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 592
    const-string v5, "PresetImage"

    const-string v6, "onActivityResult"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const/4 v5, -0x1

    if-eq p2, v5, :cond_0

    .line 653
    :goto_0
    return-void

    .line 599
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 601
    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 602
    .local v2, extras:Landroid/os/Bundle;
    if-nez v2, :cond_1

    .line 603
    const-string v5, "PresetImage"

    const-string v6, "Return value from GALLERY (extras) is null"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 606
    :cond_1
    const-string v5, "data"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 607
    .local v3, photo:Landroid/graphics/Bitmap;
    iget v5, p0, Lcom/android/phone/callsettings/PresetImage;->outputX:I

    iget v6, p0, Lcom/android/phone/callsettings/PresetImage;->outputY:I

    const/4 v7, 0x1

    invoke-static {v3, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 608
    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/PresetImage;->setImage(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 617
    .end local v2           #extras:Landroid/os/Bundle;
    .end local v3           #photo:Landroid/graphics/Bitmap;
    :pswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    sput-object v5, Lcom/android/phone/callsettings/PresetImage;->mUriCamera:Landroid/net/Uri;

    .line 618
    const-string v5, "PresetImage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mUriCamera by REQUEST_ATTACH_PHOTO_FROM_CAMERA : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/phone/callsettings/PresetImage;->mUriCamera:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    sget-object v5, Lcom/android/phone/callsettings/PresetImage;->mUriCamera:Landroid/net/Uri;

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/PresetImage;->getCropImage(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 621
    .local v0, cropIntent:Landroid/content/Intent;
    const/16 v5, 0x32

    :try_start_0
    invoke-virtual {p0, v0, v5}, Lcom/android/phone/callsettings/PresetImage;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 622
    :catch_0
    move-exception v1

    .line 623
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const v5, 0x7f090850

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/PresetImage;->displayToast(Ljava/lang/String;)V

    .line 624
    const-string v5, "PresetImage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No activity found for intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 632
    .end local v0           #cropIntent:Landroid/content/Intent;
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :pswitch_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    sput-object v5, Lcom/android/phone/callsettings/PresetImage;->mUriVideos:Landroid/net/Uri;

    .line 633
    const-string v5, "PresetImage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mUriVideos by REQUEST_PICK_VIDEO_FROM_GALLERY : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/phone/callsettings/PresetImage;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    .line 635
    .local v4, preset_video_path:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/PresetImage;->setVideo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 642
    .end local v4           #preset_video_path:Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    sput-object v5, Lcom/android/phone/callsettings/PresetImage;->mUriVideos:Landroid/net/Uri;

    .line 643
    const-string v5, "PresetImage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mUriVideos by REQUEST_ATTACH_VIDEO_FROM_CAMERA : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/phone/callsettings/PresetImage;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    .line 645
    .restart local v4       #preset_video_path:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/PresetImage;->setVideo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 599
    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 146
    const-string v0, "Configuration"

    const-string v1, "changed"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 148
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 506
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 507
    const-string v1, "PresetImage"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 510
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 512
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 514
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x0

    .line 519
    const v9, 0x7f0400d1

    invoke-virtual {p1, v9, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 524
    .local v8, v:Landroid/view/View;
    const v9, 0x7f0a0321

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageButton;

    .line 526
    if-eqz p3, :cond_3

    .line 527
    const-string v9, "bitmapXY"

    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 529
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 530
    const-string v9, "outputX"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/phone/callsettings/PresetImage;->outputX:I

    .line 531
    const-string v9, "outputY"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/phone/callsettings/PresetImage;->outputY:I

    .line 550
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 551
    .local v6, myResources:Landroid/content/res/Resources;
    const v9, 0x7f020516

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v4

    .line 553
    .local v4, is:Ljava/io/InputStream;
    :try_start_1
    new-instance v5, Ljava/io/File;

    const-string v9, "data/data/com.android.phone/files/preset_defaultimage.jpg"

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 554
    .local v5, mdefaultFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 555
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "preset_defaultimage.jpg"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v7

    .line 559
    .local v7, os:Ljava/io/OutputStream;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v9

    new-array v2, v9, [B

    .line 560
    .local v2, data:[B
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 561
    .local v1, count:I
    const/4 v9, -0x1

    if-eq v1, v9, :cond_1

    .line 562
    invoke-virtual {v7, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    .line 569
    .end local v1           #count:I
    .end local v2           #data:[B
    :cond_1
    :goto_1
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    .line 574
    .end local v5           #mdefaultFile:Ljava/io/File;
    .end local v7           #os:Ljava/io/OutputStream;
    :cond_2
    :goto_2
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    .line 581
    .end local v4           #is:Ljava/io/InputStream;
    .end local v6           #myResources:Landroid/content/res/Resources;
    :goto_3
    return-object v8

    .line 534
    :cond_3
    iget-object v9, p0, Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageButton;

    new-instance v10, Lcom/android/phone/callsettings/PresetImage$3;

    invoke-direct {v10, p0}, Lcom/android/phone/callsettings/PresetImage$3;-><init>(Lcom/android/phone/callsettings/PresetImage;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 563
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #mdefaultFile:Ljava/io/File;
    .restart local v6       #myResources:Landroid/content/res/Resources;
    .restart local v7       #os:Ljava/io/OutputStream;
    :catch_0
    move-exception v3

    .line 565
    .local v3, e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 571
    .end local v3           #e:Ljava/io/IOException;
    .end local v5           #mdefaultFile:Ljava/io/File;
    .end local v7           #os:Ljava/io/OutputStream;
    :catch_1
    move-exception v3

    .line 572
    .restart local v3       #e:Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 575
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v6           #myResources:Landroid/content/res/Resources;
    :catch_2
    move-exception v3

    .line 576
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 566
    .end local v3           #e:Ljava/io/IOException;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #mdefaultFile:Ljava/io/File;
    .restart local v6       #myResources:Landroid/content/res/Resources;
    .restart local v7       #os:Ljava/io/OutputStream;
    :catch_3
    move-exception v3

    .line 567
    .local v3, e:Landroid/content/res/Resources$NotFoundException;
    :try_start_7
    invoke-virtual {v3}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 577
    .end local v3           #e:Landroid/content/res/Resources$NotFoundException;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #mdefaultFile:Ljava/io/File;
    .end local v6           #myResources:Landroid/content/res/Resources;
    .end local v7           #os:Ljava/io/OutputStream;
    :catch_4
    move-exception v3

    .line 578
    .restart local v3       #e:Landroid/content/res/Resources$NotFoundException;
    const-string v9, "PresetImage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error::Can\'t find drawable: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/phone/callsettings/PresetImage;->changeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/android/phone/callsettings/PresetImage;->changeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 853
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/PresetImage;->changeDialog:Landroid/app/AlertDialog;

    .line 856
    :cond_0
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroy()V

    .line 857
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 834
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 847
    .local v0, itemId:I
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 10

    .prologue
    const v9, 0x7f090441

    const v8, 0x7f090440

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 151
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 152
    const-string v2, "PresetImage"

    const-string v3, "onResume()"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iput-boolean v5, p0, Lcom/android/phone/callsettings/PresetImage;->isVideoContents:Z

    .line 157
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preset_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, preset_Name:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 160
    const-string v2, "video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 161
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preset_video_path"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, videoUri:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 164
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/android/phone/callsettings/PresetImage;->mUriVideos:Landroid/net/Uri;

    .line 166
    :cond_0
    sget-object v2, Lcom/android/phone/callsettings/PresetImage;->mUriVideos:Landroid/net/Uri;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/phone/callsettings/PresetImage;->mUriVideos:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/PresetImage;->checkVideo(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 167
    const-string v2, "PresetImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mUriVideos in onResume :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/phone/callsettings/PresetImage;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iput-boolean v6, p0, Lcom/android/phone/callsettings/PresetImage;->isVideoContents:Z

    .line 178
    .end local v1           #videoUri:Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v2, "rearrange_preset_image_setting"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 180
    iget-object v2, p0, Lcom/android/phone/callsettings/PresetImage;->mCallerImageAlertChanged:[Ljava/lang/String;

    if-nez v2, :cond_2

    .line 181
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const v3, 0x7f0903f5

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v9}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    iput-object v2, p0, Lcom/android/phone/callsettings/PresetImage;->mCallerImageAlertChanged:[Ljava/lang/String;

    .line 188
    :cond_2
    iget-object v2, p0, Lcom/android/phone/callsettings/PresetImage;->mCallerImageAlertDefault:[Ljava/lang/String;

    if-nez v2, :cond_3

    .line 189
    new-array v2, v7, [Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v9}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    iput-object v2, p0, Lcom/android/phone/callsettings/PresetImage;->mCallerImageAlertDefault:[Ljava/lang/String;

    .line 216
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->setListener()V

    .line 217
    invoke-direct {p0}, Lcom/android/phone/callsettings/PresetImage;->updatePresetImage()V

    .line 220
    iget-object v2, p0, Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageButton;

    iget-boolean v3, p0, Lcom/android/phone/callsettings/PresetImage;->isVideoContents:Z

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 221
    iget-object v2, p0, Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageButton;

    iget-boolean v3, p0, Lcom/android/phone/callsettings/PresetImage;->isVideoContents:Z

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 222
    const-string v2, "PresetImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clickable attr. in onResume() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->isClickable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void

    .line 170
    .restart local v1       #videoUri:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preset_path"

    const-string v4, "data/data/com.android.phone/files/preset_defaultimage.jpg"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 172
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preset_name"

    const v4, 0x7f09028f

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 196
    .end local v1           #videoUri:Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/android/phone/callsettings/PresetImage;->mCallerImageAlertChanged:[Ljava/lang/String;

    if-nez v2, :cond_6

    .line 197
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const v3, 0x7f0903f5

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v9}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x3

    const v4, 0x7f0903f4

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const v4, 0x7f0903e8

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/android/phone/callsettings/PresetImage;->mCallerImageAlertChanged:[Ljava/lang/String;

    .line 206
    :cond_6
    iget-object v2, p0, Lcom/android/phone/callsettings/PresetImage;->mCallerImageAlertDefault:[Ljava/lang/String;

    if-nez v2, :cond_3

    .line 207
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v9}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const v3, 0x7f0903f4

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x3

    const v4, 0x7f0903e8

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/android/phone/callsettings/PresetImage;->mCallerImageAlertDefault:[Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 136
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 138
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "outputX"

    iget v2, p0, Lcom/android/phone/callsettings/PresetImage;->outputX:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    const-string v1, "outputY"

    iget v2, p0, Lcom/android/phone/callsettings/PresetImage;->outputY:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 141
    const-string v1, "bitmapXY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 143
    return-void
.end method

.method public setListener()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/phone/callsettings/PresetImage$1;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/PresetImage$1;-><init>(Lcom/android/phone/callsettings/PresetImage;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0322

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/callsettings/PresetImage;->btnChangePreset:Landroid/widget/Button;

    .line 247
    iget-object v0, p0, Lcom/android/phone/callsettings/PresetImage;->btnChangePreset:Landroid/widget/Button;

    new-instance v1, Lcom/android/phone/callsettings/PresetImage$2;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/PresetImage$2;-><init>(Lcom/android/phone/callsettings/PresetImage;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    return-void
.end method

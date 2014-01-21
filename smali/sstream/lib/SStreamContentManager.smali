.class public Lsstream/lib/SStreamContentManager;
.super Ljava/lang/Object;
.source "SStreamContentManager.java"


# static fields
.field private static isChecked:Z

.field private static isEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lsstream/lib/SStreamContentManager;->isChecked:Z

    .line 27
    const/4 v0, 0x1

    sput-boolean v0, Lsstream/lib/SStreamContentManager;->isEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static IsStreamEnabled(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 31
    sget-boolean v2, Lsstream/lib/SStreamContentManager;->isChecked:Z

    if-nez v2, :cond_0

    .line 33
    sput-boolean v3, Lsstream/lib/SStreamContentManager;->isChecked:Z

    .line 35
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "sstream.app"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    .line 37
    .local v1, enableState:I
    packed-switch v1, :pswitch_data_0

    .line 44
    const/4 v2, 0x0

    sput-boolean v2, Lsstream/lib/SStreamContentManager;->isEnabled:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v1           #enableState:I
    :cond_0
    :goto_0
    sget-boolean v2, Lsstream/lib/SStreamContentManager;->isEnabled:Z

    if-nez v2, :cond_1

    .line 55
    const-string v2, "SStreamContentManager"

    const-string v3, "SStream is disabled  or not installed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_1
    sget-boolean v2, Lsstream/lib/SStreamContentManager;->isEnabled:Z

    return v2

    .line 41
    .restart local v1       #enableState:I
    :pswitch_0
    const/4 v2, 0x1

    :try_start_1
    sput-boolean v2, Lsstream/lib/SStreamContentManager;->isEnabled:Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 47
    .end local v1           #enableState:I
    :catch_0
    move-exception v0

    .line 49
    .local v0, e:Ljava/lang/IllegalArgumentException;
    sput-boolean v4, Lsstream/lib/SStreamContentManager;->isEnabled:Z

    goto :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static deleteStoryItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "packageName"
    .parameter "storyItemId"
    .parameter "streamId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-static {p0}, Lsstream/lib/SStreamContentManager;->IsStreamEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    :goto_0
    return-void

    .line 113
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    .line 114
    :cond_1
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 116
    :cond_2
    const-string v1, "id=? AND application_name=? AND stream_id=?"

    .line 117
    .local v1, selectionClause:Ljava/lang/String;
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const/4 v2, 0x2

    aput-object p3, v0, v2

    .line 118
    .local v0, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lsstream/lib/constants/StreamProviderConstants;->STORY_DELETE_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getStoryContentValues(Lsstream/lib/objs/StoryItem;)Landroid/content/ContentValues;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsstream/lib/InvalidStoryItemException;
        }
    .end annotation

    .prologue
    .line 274
    invoke-static {p0}, Lsstream/lib/SStreamContentManager;->isStoryItemValid(Lsstream/lib/objs/StoryItem;)V

    .line 275
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 277
    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getTimestamp()J

    move-result-wide v0

    .line 278
    long-to-double v3, v0

    const-wide/high16 v5, 0x4024

    const-wide/high16 v7, 0x4028

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_0

    .line 279
    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    .line 281
    :cond_0
    const-string v3, "id"

    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v3, "stream_id"

    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getStreamId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v3, "category"

    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getCategory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v3, "application_name"

    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getAppPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v3, "title"

    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v3, "body"

    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v3, "type"

    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getType()Lsstream/lib/objs/StoryItem$StoryType;

    move-result-object v4

    invoke-virtual {v4}, Lsstream/lib/objs/StoryItem$StoryType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v3, "author_name"

    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getAuthor()Lsstream/lib/objs/Author;

    move-result-object v4

    invoke-virtual {v4}, Lsstream/lib/objs/Author;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v3, "time_stamp"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 290
    const-string v0, "more"

    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getMore()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 291
    const-string v0, "source"

    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getImage()Lsstream/lib/objs/Image;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 295
    const-string v0, "image_url"

    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getImage()Lsstream/lib/objs/Image;

    move-result-object v1

    invoke-virtual {v1}, Lsstream/lib/objs/Image;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v0, "image_hints"

    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getImage()Lsstream/lib/objs/Image;

    move-result-object v1

    invoke-virtual {v1}, Lsstream/lib/objs/Image;->getHints()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v0, "image_height"

    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getImage()Lsstream/lib/objs/Image;

    move-result-object v1

    invoke-virtual {v1}, Lsstream/lib/objs/Image;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 298
    const-string v0, "image_width"

    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getImage()Lsstream/lib/objs/Image;

    move-result-object v1

    invoke-virtual {v1}, Lsstream/lib/objs/Image;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 302
    :cond_1
    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getAuthor()Lsstream/lib/objs/Author;

    move-result-object v0

    invoke-virtual {v0}, Lsstream/lib/objs/Author;->getImage()Lsstream/lib/objs/Image;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 303
    const-string v0, "author_image_url"

    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getAuthor()Lsstream/lib/objs/Author;

    move-result-object v1

    invoke-virtual {v1}, Lsstream/lib/objs/Author;->getImage()Lsstream/lib/objs/Image;

    move-result-object v1

    invoke-virtual {v1}, Lsstream/lib/objs/Image;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v0, "author_image_height"

    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getAuthor()Lsstream/lib/objs/Author;

    move-result-object v1

    invoke-virtual {v1}, Lsstream/lib/objs/Author;->getImage()Lsstream/lib/objs/Image;

    move-result-object v1

    invoke-virtual {v1}, Lsstream/lib/objs/Image;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 305
    const-string v0, "author_image_width"

    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getAuthor()Lsstream/lib/objs/Author;

    move-result-object v1

    invoke-virtual {v1}, Lsstream/lib/objs/Author;->getImage()Lsstream/lib/objs/Image;

    move-result-object v1

    invoke-virtual {v1}, Lsstream/lib/objs/Image;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 308
    :cond_2
    return-object v2
.end method

.method private static isStoryItemValid(Lsstream/lib/objs/StoryItem;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsstream/lib/InvalidStoryItemException;
        }
    .end annotation

    .prologue
    .line 319
    if-nez p0, :cond_0

    .line 320
    new-instance v0, Lsstream/lib/InvalidStoryItemException;

    const-string v1, "StoryItem is null"

    invoke-direct {v0, v1}, Lsstream/lib/InvalidStoryItemException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_0
    const-string v0, ""

    .line 325
    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 326
    const-string v0, "id"

    .line 328
    :cond_1
    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getStreamId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "streamId"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 331
    :cond_2
    invoke-virtual {p0}, Lsstream/lib/objs/StoryItem;->getAppPackage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "appPackage"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 335
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 336
    new-instance v1, Lsstream/lib/InvalidStoryItemException;

    const-string v2, "StoryItem is incomplete. The following properties are missing: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lsstream/lib/InvalidStoryItemException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 329
    :cond_4
    const-string v0, ", streamId"

    goto :goto_0

    .line 332
    :cond_5
    const-string v0, ", appPackage"

    goto :goto_1

    .line 339
    :cond_6
    return-void
.end method

.method public static sendStoryItem(Landroid/content/Context;Lsstream/lib/objs/StoryItem;)V
    .locals 3
    .parameter "context"
    .parameter "storyItem"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsstream/lib/InvalidStoryItemException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-static {p0}, Lsstream/lib/SStreamContentManager;->IsStreamEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lsstream/lib/constants/StreamProviderConstants;->STORY_URI:Landroid/net/Uri;

    invoke-static {p1}, Lsstream/lib/SStreamContentManager;->getStoryContentValues(Lsstream/lib/objs/StoryItem;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.class public Lsstream/lib/constants/StreamProviderConstants;
.super Ljava/lang/Object;
.source "StreamProviderConstants.java"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final STORY_DELETE_BULK_URI:Landroid/net/Uri;

.field public static final STORY_DELETE_URI:Landroid/net/Uri;

.field public static final STORY_PROJECTION:[Ljava/lang/String;

.field public static final STORY_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 86
    const-string v0, "content://sstream.app.provider.StoryProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lsstream/lib/constants/StreamProviderConstants;->CONTENT_URI:Landroid/net/Uri;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lsstream/lib/constants/StreamProviderConstants;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "story"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lsstream/lib/constants/StreamProviderConstants;->STORY_URI:Landroid/net/Uri;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lsstream/lib/constants/StreamProviderConstants;->STORY_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "delete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lsstream/lib/constants/StreamProviderConstants;->STORY_DELETE_URI:Landroid/net/Uri;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lsstream/lib/constants/StreamProviderConstants;->STORY_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "delete_bulk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lsstream/lib/constants/StreamProviderConstants;->STORY_DELETE_BULK_URI:Landroid/net/Uri;

    .line 102
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "stream_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "application_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "category"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "image_url"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "image_hints"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "image_height"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "image_width"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "author_name"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "author_image_url"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "author_image_height"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "author_image_width"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "time_stamp"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "more"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "source"

    aput-object v2, v0, v1

    sput-object v0, Lsstream/lib/constants/StreamProviderConstants;->STORY_PROJECTION:[Ljava/lang/String;

    .line 120
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

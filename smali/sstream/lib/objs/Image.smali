.class public Lsstream/lib/objs/Image;
.super Ljava/lang/Object;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsstream/lib/objs/Image$ImageHints;
    }
.end annotation


# instance fields
.field private height:I

.field private hints:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1
    .parameter "url"
    .parameter "width"
    .parameter "height"
    .parameter "hints"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lsstream/lib/objs/Image;->location:Ljava/lang/String;

    .line 37
    if-eqz p1, :cond_1

    .line 39
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 40
    :cond_0
    const/16 p2, 0x1e0

    .line 41
    const/16 p3, 0x140

    .line 44
    :cond_1
    iput p2, p0, Lsstream/lib/objs/Image;->width:I

    .line 45
    iput p3, p0, Lsstream/lib/objs/Image;->height:I

    .line 46
    if-eqz p4, :cond_2

    sget-object v0, Lsstream/lib/objs/Image$ImageHints;->NO_OVERLAY_NO_CROP:Lsstream/lib/objs/Image$ImageHints;

    invoke-virtual {v0}, Lsstream/lib/objs/Image$ImageHints;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    sget-object v0, Lsstream/lib/objs/Image$ImageHints;->NO_OVERLAY_NO_CROP:Lsstream/lib/objs/Image$ImageHints;

    invoke-virtual {v0}, Lsstream/lib/objs/Image$ImageHints;->toString()Ljava/lang/String;

    move-result-object p4

    .line 51
    :goto_0
    iput-object p4, p0, Lsstream/lib/objs/Image;->hints:Ljava/lang/String;

    .line 52
    return-void

    .line 49
    :cond_2
    sget-object v0, Lsstream/lib/objs/Image$ImageHints;->NORMAL:Lsstream/lib/objs/Image$ImageHints;

    invoke-virtual {v0}, Lsstream/lib/objs/Image$ImageHints;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_0
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lsstream/lib/objs/Image;->height:I

    return v0
.end method

.method public getHints()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lsstream/lib/objs/Image;->hints:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lsstream/lib/objs/Image;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lsstream/lib/objs/Image;->width:I

    return v0
.end method

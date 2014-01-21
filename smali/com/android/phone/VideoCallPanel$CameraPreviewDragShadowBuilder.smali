.class Lcom/android/phone/VideoCallPanel$CameraPreviewDragShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "VideoCallPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/VideoCallPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraPreviewDragShadowBuilder"
.end annotation


# static fields
.field private static shadow:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 369
    invoke-direct {p0, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 370
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    check-cast p1, Landroid/view/TextureView;

    .end local p1
    invoke-virtual {p1}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    sput-object v0, Lcom/android/phone/VideoCallPanel$CameraPreviewDragShadowBuilder;->shadow:Landroid/graphics/drawable/Drawable;

    .line 371
    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 403
    sget-object v0, Lcom/android/phone/VideoCallPanel$CameraPreviewDragShadowBuilder;->shadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 404
    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 4
    .parameter "size"
    .parameter "touch"

    .prologue
    const/4 v3, 0x0

    .line 381
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel$CameraPreviewDragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 384
    .local v1, width:I
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel$CameraPreviewDragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 389
    .local v0, height:I
    sget-object v2, Lcom/android/phone/VideoCallPanel$CameraPreviewDragShadowBuilder;->shadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 393
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Point;->set(II)V

    .line 396
    div-int/lit8 v2, v1, 0x2

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 397
    return-void
.end method

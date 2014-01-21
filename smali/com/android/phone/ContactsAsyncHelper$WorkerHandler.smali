.class Lcom/android/phone/ContactsAsyncHelper$WorkerHandler;
.super Landroid/os/Handler;
.source "ContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ContactsAsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ContactsAsyncHelper;


# direct methods
.method public constructor <init>(Lcom/android/phone/ContactsAsyncHelper;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/phone/ContactsAsyncHelper$WorkerHandler;->this$0:Lcom/android/phone/ContactsAsyncHelper;

    .line 206
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 207
    return-void
.end method

.method private getPhotoIconWhenAppropriate(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "context"
    .parameter "photo"

    .prologue
    const/4 v8, 0x0

    .line 278
    instance-of v9, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v9, :cond_1

    move-object v4, v8

    .line 303
    .end local p2
    :cond_0
    :goto_0
    return-object v4

    .line 281
    .restart local p2
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e002a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 283
    .local v0, iconSize:I
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    .end local p2
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 284
    .local v4, orgBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 285
    .local v6, orgWidth:I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 286
    .local v5, orgHeight:I
    if-le v6, v5, :cond_3

    move v1, v6

    .line 288
    .local v1, longerEdge:I
    :goto_1
    if-le v1, v0, :cond_0

    .line 289
    int-to-float v9, v1

    int-to-float v10, v0

    div-float v7, v9, v10

    .line 290
    .local v7, ratio:F
    int-to-float v9, v6

    div-float/2addr v9, v7

    float-to-int v3, v9

    .line 291
    .local v3, newWidth:I
    int-to-float v9, v5

    div-float/2addr v9, v7

    float-to-int v2, v9

    .line 294
    .local v2, newHeight:I
    if-lez v3, :cond_2

    if-gtz v2, :cond_4

    .line 295
    :cond_2
    const-string v9, "ContactsAsyncHelper"

    const-string v10, "Photo icon\'s width or height become 0."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v8

    .line 296
    goto :goto_0

    .end local v1           #longerEdge:I
    .end local v2           #newHeight:I
    .end local v3           #newWidth:I
    .end local v7           #ratio:F
    :cond_3
    move v1, v5

    .line 286
    goto :goto_1

    .line 301
    .restart local v1       #longerEdge:I
    .restart local v2       #newHeight:I
    .restart local v3       #newWidth:I
    .restart local v7       #ratio:F
    :cond_4
    const/4 v8, 0x1

    invoke-static {v4, v3, v2, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 211
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;

    .line 213
    .local v0, args:Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;
    iget v5, p1, Landroid/os/Message;->arg1:I

    packed-switch v5, :pswitch_data_0

    .line 266
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/phone/ContactsAsyncHelper$WorkerHandler;->this$0:Lcom/android/phone/ContactsAsyncHelper;

    #getter for: Lcom/android/phone/ContactsAsyncHelper;->mResultHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/phone/ContactsAsyncHelper;->access$000(Lcom/android/phone/ContactsAsyncHelper;)Landroid/os/Handler;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 267
    .local v4, reply:Landroid/os/Message;
    iget v5, p1, Landroid/os/Message;->arg1:I

    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 268
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 269
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 270
    return-void

    .line 215
    .end local v4           #reply:Landroid/os/Message;
    :pswitch_0
    const/4 v3, 0x0

    .line 218
    .local v3, inputStream:Ljava/io/InputStream;
    :try_start_0
    iget-object v5, v0, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, v0, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;->uri:Landroid/net/Uri;

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 224
    :goto_1
    if-eqz v3, :cond_2

    .line 227
    :try_start_1
    iget-object v5, v0, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v0, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;->photo:Landroid/graphics/drawable/Drawable;

    .line 231
    iget-object v5, v0, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;->photo:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v5, v6}, Lcom/android/phone/ContactsAsyncHelper$WorkerHandler;->getPhotoIconWhenAppropriate(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v0, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;->photoIcon:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    .line 253
    :goto_2
    if-eqz v3, :cond_0

    .line 255
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 256
    :catch_0
    move-exception v1

    .line 257
    .local v1, e:Ljava/io/IOException;
    const-string v5, "ContactsAsyncHelper"

    const-string v6, "Unable to close input stream."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 220
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 221
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    const-string v5, "ContactsAsyncHelper"

    const-string v6, "Error opening photo input stream"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 253
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_1

    .line 255
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 258
    :cond_1
    :goto_3
    throw v5

    .line 232
    :catch_2
    move-exception v2

    .line 233
    .local v2, exception:Ljava/lang/OutOfMemoryError;
    :try_start_5
    const-string v5, "ContactsAsyncHelper"

    const-string v6, "getBitmap outOfMemory exception"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 235
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;->photo:Landroid/graphics/drawable/Drawable;

    .line 236
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;->photoIcon:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 244
    .end local v2           #exception:Ljava/lang/OutOfMemoryError;
    :cond_2
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;->photo:Landroid/graphics/drawable/Drawable;

    .line 245
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;->photoIcon:Landroid/graphics/Bitmap;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 256
    :catch_3
    move-exception v1

    .line 257
    .local v1, e:Ljava/io/IOException;
    const-string v6, "ContactsAsyncHelper"

    const-string v7, "Unable to close input stream."

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 213
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.class Lcom/android/phone/EmergencyContactItem$ContactImageAsyncQuery;
.super Landroid/content/AsyncQueryHandler;
.source "EmergencyContactItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EmergencyContactItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactImageAsyncQuery"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyContactItem;


# direct methods
.method public constructor <init>(Lcom/android/phone/EmergencyContactItem;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/phone/EmergencyContactItem$ContactImageAsyncQuery;->this$0:Lcom/android/phone/EmergencyContactItem;

    .line 157
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 158
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    .line 141
    invoke-super {p0, p1, p2, p3}, Landroid/content/AsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    .line 142
    if-eqz p3, :cond_2

    .line 143
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    const-string v1, "EmergencyContactItem"

    const-string v2, "ContactImageAsyncQuery complete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, imageBytes:[B
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 147
    if-eqz v0, :cond_0

    .line 148
    iget-object v1, p0, Lcom/android/phone/EmergencyContactItem$ContactImageAsyncQuery;->this$0:Lcom/android/phone/EmergencyContactItem;

    array-length v2, v0

    invoke-static {v0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    #setter for: Lcom/android/phone/EmergencyContactItem;->mPhoto:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/android/phone/EmergencyContactItem;->access$002(Lcom/android/phone/EmergencyContactItem;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/android/phone/EmergencyContactItem$ContactImageAsyncQuery;->this$0:Lcom/android/phone/EmergencyContactItem;

    #calls: Lcom/android/phone/EmergencyContactItem;->updateContactItem()V
    invoke-static {v1}, Lcom/android/phone/EmergencyContactItem;->access$100(Lcom/android/phone/EmergencyContactItem;)V

    .line 152
    .end local v0           #imageBytes:[B
    :cond_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 154
    :cond_2
    return-void
.end method

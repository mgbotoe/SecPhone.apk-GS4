.class Lcom/android/phone/LGTCountryList$1;
.super Ljava/lang/Object;
.source "LGTCountryList.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/LGTCountryList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LGTCountryList;


# direct methods
.method constructor <init>(Lcom/android/phone/LGTCountryList;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/phone/LGTCountryList$1;->this$0:Lcom/android/phone/LGTCountryList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 106
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 110
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 13
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 113
    new-instance v9, Lcom/android/phone/LGTRoamingData;

    iget-object v10, p0, Lcom/android/phone/LGTCountryList$1;->this$0:Lcom/android/phone/LGTCountryList;

    invoke-virtual {v10}, Lcom/android/phone/LGTCountryList;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/phone/LGTRoamingData;-><init>(Landroid/content/Context;)V

    .line 114
    .local v9, rData:Lcom/android/phone/LGTRoamingData;
    const-string v0, ""

    .line 115
    .local v0, SearchText:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    const-string v10, ""

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 116
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    :goto_0
    invoke-virtual {v9, v0}, Lcom/android/phone/LGTRoamingData;->getCountry(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 121
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 122
    const-string v10, "_id"

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 123
    .local v7, idIdx:I
    const/4 v3, 0x0

    .line 124
    .local v3, cNameIdx:I
    iget-object v10, p0, Lcom/android/phone/LGTCountryList$1;->this$0:Lcom/android/phone/LGTCountryList;

    invoke-virtual {v10}, Lcom/android/phone/LGTCountryList;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v10, v10, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "ko_KR"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 125
    const-string v10, "name_kor"

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 129
    :goto_1
    const-string v10, "country_num"

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 130
    .local v5, cNumIdx:I
    new-instance v8, Landroid/database/MatrixCursor;

    invoke-static {}, Lcom/android/phone/LGTCountryList;->access$000()[Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 131
    .local v8, mCursor:Landroid/database/MatrixCursor;
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 132
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, cName:Ljava/lang/String;
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, cNum:Ljava/lang/String;
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 135
    .local v1, _id:Ljava/lang/Long;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    iget-object v10, p0, Lcom/android/phone/LGTCountryList$1;->this$0:Lcom/android/phone/LGTCountryList;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    #calls: Lcom/android/phone/LGTCountryList;->columnValuesOfWord(JLjava/lang/String;)[Ljava/lang/Object;
    invoke-static {v10, v11, v12, v2}, Lcom/android/phone/LGTCountryList;->access$100(Lcom/android/phone/LGTCountryList;JLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2

    .line 118
    .end local v1           #_id:Ljava/lang/Long;
    .end local v2           #cName:Ljava/lang/String;
    .end local v3           #cNameIdx:I
    .end local v4           #cNum:Ljava/lang/String;
    .end local v5           #cNumIdx:I
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #idIdx:I
    .end local v8           #mCursor:Landroid/database/MatrixCursor;
    :cond_0
    new-instance v0, Ljava/lang/String;

    .end local v0           #SearchText:Ljava/lang/String;
    const-string v10, "a"

    invoke-direct {v0, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v0       #SearchText:Ljava/lang/String;
    goto/16 :goto_0

    .line 127
    .restart local v3       #cNameIdx:I
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v7       #idIdx:I
    :cond_1
    const-string v10, "name"

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    .line 143
    .restart local v5       #cNumIdx:I
    .restart local v8       #mCursor:Landroid/database/MatrixCursor;
    :cond_2
    iget-object v10, p0, Lcom/android/phone/LGTCountryList$1;->this$0:Lcom/android/phone/LGTCountryList;

    iget-object v11, p0, Lcom/android/phone/LGTCountryList$1;->this$0:Lcom/android/phone/LGTCountryList;

    #setter for: Lcom/android/phone/LGTCountryList;->mAllcontext:Landroid/content/Context;
    invoke-static {v10, v11}, Lcom/android/phone/LGTCountryList;->access$202(Lcom/android/phone/LGTCountryList;Landroid/content/Context;)Landroid/content/Context;

    .line 144
    iget-object v10, p0, Lcom/android/phone/LGTCountryList$1;->this$0:Lcom/android/phone/LGTCountryList;

    #setter for: Lcom/android/phone/LGTCountryList;->mAllCursor:Landroid/database/MatrixCursor;
    invoke-static {v10, v8}, Lcom/android/phone/LGTCountryList;->access$302(Lcom/android/phone/LGTCountryList;Landroid/database/MatrixCursor;)Landroid/database/MatrixCursor;

    .line 145
    iget-object v10, p0, Lcom/android/phone/LGTCountryList$1;->this$0:Lcom/android/phone/LGTCountryList;

    iget-object v11, p0, Lcom/android/phone/LGTCountryList$1;->this$0:Lcom/android/phone/LGTCountryList;

    #getter for: Lcom/android/phone/LGTCountryList;->mAllcontext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/phone/LGTCountryList;->access$200(Lcom/android/phone/LGTCountryList;)Landroid/content/Context;

    move-result-object v11

    #calls: Lcom/android/phone/LGTCountryList;->getCountryList(Landroid/content/Context;Landroid/database/MatrixCursor;)V
    invoke-static {v10, v11, v8}, Lcom/android/phone/LGTCountryList;->access$400(Lcom/android/phone/LGTCountryList;Landroid/content/Context;Landroid/database/MatrixCursor;)V

    .line 147
    .end local v3           #cNameIdx:I
    .end local v5           #cNumIdx:I
    .end local v7           #idIdx:I
    .end local v8           #mCursor:Landroid/database/MatrixCursor;
    :cond_3
    if-eqz v6, :cond_4

    .line 148
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 150
    :cond_4
    invoke-virtual {v9}, Lcom/android/phone/LGTRoamingData;->close()V

    .line 151
    return-void
.end method

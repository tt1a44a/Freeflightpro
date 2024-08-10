.class public Lcom/parrot/freeflight/blackbox/writer/BlackboxWriterTask;
.super Landroid/os/AsyncTask;
.source "BlackboxWriterTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BlackboxWriterTask"


# instance fields
.field private final mDataEntries:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mFileName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mGZipOutputStream:Ljava/util/zip/GZIPOutputStream;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mHeader:Lcom/parrot/freeflight/blackbox/recorder/entries/Header;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPacedEntries:Lcom/parrot/freeflight/blackbox/LimitedList;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/blackbox/LimitedList",
            "<",
            "Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mWriteListener:Lcom/parrot/freeflight/blackbox/writer/BlackboxWriter$WriteListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mZipBlackboxFile:Ljava/io/File;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Lcom/parrot/freeflight/blackbox/recorder/entries/Header;Ljava/util/List;Lcom/parrot/freeflight/blackbox/LimitedList;Lcom/parrot/freeflight/blackbox/writer/BlackboxWriter$WriteListener;)V
    .locals 3
    .param p1, "blackboxDirectory"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "fileName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "header"    # Lcom/parrot/freeflight/blackbox/recorder/entries/Header;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/parrot/freeflight/blackbox/LimitedList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "writeListener"    # Lcom/parrot/freeflight/blackbox/writer/BlackboxWriter$WriteListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lcom/parrot/freeflight/blackbox/recorder/entries/Header;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;",
            ">;",
            "Lcom/parrot/freeflight/blackbox/LimitedList",
            "<",
            "Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;",
            ">;",
            "Lcom/parrot/freeflight/blackbox/writer/BlackboxWriter$WriteListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    .local p4, "dataEntries":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;>;"
    .local p5, "pacedEntries":Lcom/parrot/freeflight/blackbox/LimitedList;, "Lcom/parrot/freeflight/blackbox/LimitedList<Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 51
    iput-object p2, p0, Lcom/parrot/freeflight/blackbox/writer/BlackboxWriterTask;->mFileName:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/parrot/freeflight/blackbox/writer/BlackboxWriterTask;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".gzip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/parrot/freeflight/blackbox/writer/BlackboxWriterTask;->mZipBlackboxFile:Ljava/io/File;

    .line 53
    iput-object p3, p0, Lcom/parrot/freeflight/blackbox/writer/BlackboxWriterTask;->mHeader:Lcom/parrot/freeflight/blackbox/recorder/entries/Header;

    .line 54
    iput-object p5, p0, Lcom/parrot/freeflight/blackbox/writer/BlackboxWriterTask;->mPacedEntries:Lcom/parrot/freeflight/blackbox/LimitedList;

    .line 55
    iput-object p4, p0, Lcom/parrot/freeflight/blackbox/writer/BlackboxWriterTask;->mDataEntries:Ljava/util/List;

    .line 56
    iput-object p6, p0, Lcom/parrot/freeflight/blackbox/writer/BlackboxWriterTask;->mWriteListener:Lcom/parrot/freeflight/blackbox/writer/BlackboxWriter$WriteListener;

    .line 57
    return-void
.end method

.method private closeOutputStream()V
    .locals 2

    .prologue
    .line 114
    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/writer/BlackboxWriterTask;->mGZipOutputStream:Ljava/util/zip/GZIPOutputStream;

    if-eqz v1, :cond_0

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/writer/BlackboxWriterTask;->mGZipOutputStream:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static createDatasJson(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 4
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "recordEntries":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 126
    .local v0, "jsonDatasEntries":Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;

    .line 127
    .local v1, "recordEntry":Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;
    invoke-virtual {v1}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 129
    .end local v1    # "recordEntry":Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/blackbox/writer/BlackboxWriterTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 62
    :try_start_0
    new-instance v8, Ljava/util/zip/GZIPOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    iget-object v10, p0, Lcom/parrot/freeflight/blackbox/writer/BlackboxWriterTask;->mZipBlackboxFile:Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v8, p0, Lcom/parrot/freeflight/blackbox/writer/BlackboxWriterTask;->mGZipOutputStream:Ljava/util/zip/GZIPOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    iget-object v8, p0, Lcom/parrot/freeflight/blackbox/writer/BlackboxWriterTask;->mGZipOutputStream:Ljava/util/zip/GZIPOutputStream;

    if-eqz v8, :cond_1

    .line 67
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 69
    .local v5, "jsonRecordEntries":Lorg/json/JSONObject;
    new-instance v2, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/parrot/freeflight/blackbox/writer/BlackboxWriterTask;->mDataEntries:Ljava/util/List;

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 71
    .local v2, "datasRecordEntries":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v0, "datas1HzRecordEntries":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v1, "datas5HzRecordEntries":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;>;"
    iget-object v8, p0, Lcom/parrot/freeflight/blackbox/writer/BlackboxWriterTask;->mPacedEntries:Lcom/parrot/freeflight/blackbox/LimitedList;

    if-eqz v8, :cond_0

    .line 74
    const/4 v4, 0x0

    .local v4, "i":I
    iget-object v8, p0, Lcom/parrot/freeflight/blackbox/writer/BlackboxWriterTask;->mPacedEntries:Lcom/parrot/freeflight/blackbox/LimitedList;

    invoke-virtual {v8}, Lcom/parrot/freeflight/blackbox/LimitedList;->size()I

    move-result v6

    .local v6, "length":I
    :goto_1
    if-ge v4, v6, :cond_0

    .line 75
    iget-object v8, p0, Lcom/parrot/freeflight/blackbox/writer/BlackboxWriterTask;->mPacedEntries:Lcom/parrot/freeflight/blackbox/LimitedList;

    invoke-virtual {v8, v4}, Lcom/parrot/freeflight/blackbox/LimitedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;

    .line 76
    .local v7, "recordEntry":Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;
    invoke-virtual {v7}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;->getCategory()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 74
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 63
    .end local v0    # "datas1HzRecordEntries":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;>;"
    .end local v1    # "datas5HzRecordEntries":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;>;"
    .end local v2    # "datasRecordEntries":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;>;"
    .end local v4    # "i":I
    .end local v5    # "jsonRecordEntries":Lorg/json/JSONObject;
    .end local v6    # "length":I
    .end local v7    # "recordEntry":Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;
    :catch_0
    move-exception v3

    .line 64
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 78
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "datas1HzRecordEntries":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;>;"
    .restart local v1    # "datas5HzRecordEntries":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;>;"
    .restart local v2    # "datasRecordEntries":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;>;"
    .restart local v4    # "i":I
    .restart local v5    # "jsonRecordEntries":Lorg/json/JSONObject;
    .restart local v6    # "length":I
    .restart local v7    # "recordEntry":Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;
    :pswitch_0
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 81
    :pswitch_1
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 88
    .end local v4    # "i":I
    .end local v6    # "length":I
    .end local v7    # "recordEntry":Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;
    :cond_0
    :try_start_1
    const-string v8, "header"

    iget-object v9, p0, Lcom/parrot/freeflight/blackbox/writer/BlackboxWriterTask;->mHeader:Lcom/parrot/freeflight/blackbox/recorder/entries/Header;

    invoke-virtual {v9}, Lcom/parrot/freeflight/blackbox/recorder/entries/Header;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    const-string v8, "datas"

    invoke-static {v2}, Lcom/parrot/freeflight/blackbox/writer/BlackboxWriterTask;->createDatasJson(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    const-string v8, "datas_1Hz"

    invoke-static {v0}, Lcom/parrot/freeflight/blackbox/writer/BlackboxWriterTask;->createDatasJson(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string v8, "datas_5Hz"

    invoke-static {v1}, Lcom/parrot/freeflight/blackbox/writer/BlackboxWriterTask;->createDatasJson(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    iget-object v8, p0, Lcom/parrot/freeflight/blackbox/writer/BlackboxWriterTask;->mGZipOutputStream:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    .end local v0    # "datas1HzRecordEntries":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;>;"
    .end local v1    # "datas5HzRecordEntries":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;>;"
    .end local v2    # "datasRecordEntries":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;>;"
    .end local v5    # "jsonRecordEntries":Lorg/json/JSONObject;
    :cond_1
    :goto_3
    const/4 v8, 0x0

    return-object v8

    .line 93
    .restart local v0    # "datas1HzRecordEntries":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;>;"
    .restart local v1    # "datas5HzRecordEntries":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;>;"
    .restart local v2    # "datasRecordEntries":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;>;"
    .restart local v5    # "jsonRecordEntries":Lorg/json/JSONObject;
    :catch_1
    move-exception v3

    .line 94
    .local v3, "e":Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 93
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    goto :goto_4

    .line 76
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/parrot/freeflight/blackbox/writer/BlackboxWriterTask;->closeOutputStream()V

    .line 111
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/blackbox/writer/BlackboxWriterTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/Void;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/writer/BlackboxWriterTask;->mGZipOutputStream:Ljava/util/zip/GZIPOutputStream;

    if-eqz v0, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/parrot/freeflight/blackbox/writer/BlackboxWriterTask;->closeOutputStream()V

    .line 104
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/writer/BlackboxWriterTask;->mWriteListener:Lcom/parrot/freeflight/blackbox/writer/BlackboxWriter$WriteListener;

    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/writer/BlackboxWriterTask;->mZipBlackboxFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/blackbox/writer/BlackboxWriter$WriteListener;->onFileWritten(Ljava/lang/String;)V

    .line 106
    :cond_0
    return-void
.end method

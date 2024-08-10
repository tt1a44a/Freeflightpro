.class public Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;
.super Ljava/lang/Object;
.source "BitmapCollection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;,
        Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$SourceDescription;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:I

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/muvee/dsg/text/custom/seqment/TextSegment;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$SourceDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->d:Ljava/util/List;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->e:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->f:Ljava/util/List;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->g:Ljava/util/Map;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->h:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->i:Ljava/util/Map;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->j:Ljava/util/Map;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->k:Ljava/util/Map;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->l:Ljava/util/Map;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->m:Ljava/util/List;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->n:Ljava/util/Map;

    .line 100
    iput p1, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->b:I

    .line 101
    iput p2, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->c:I

    .line 102
    return-void
.end method

.method private a(ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 142
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 150
    :goto_0
    return-object v0

    .line 146
    :cond_0
    if-eqz p2, :cond_1

    .line 147
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->g:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0

    .line 150
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;)V
    .locals 9

    .prologue
    const/4 v0, 0x1

    .line 254
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 255
    const/4 v2, 0x1

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 256
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 257
    invoke-static {p2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 259
    sget-object v2, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->a:Ljava/lang/String;

    const-string v3, "::width=%d height=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :goto_0
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int/lit8 v3, v0, 0x2

    div-int/2addr v2, v3

    iget v3, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->b:I

    if-gt v2, v3, :cond_0

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/lit8 v3, v0, 0x2

    div-int/2addr v2, v3

    iget v3, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->c:I

    if-le v2, v3, :cond_1

    .line 261
    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 262
    sget-object v2, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->a:Ljava/lang/String;

    const-string v3, "::sampleSize=%d "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 285
    :goto_1
    return-void

    .line 264
    :cond_1
    :try_start_1
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 265
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 266
    invoke-static {p2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 270
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    new-instance v8, Ljava/io/RandomAccessFile;

    const-string/jumbo v0, "rw"

    invoke-direct {v8, v7, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 272
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    .line 273
    invoke-virtual {v6, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 274
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    .line 276
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;->a(Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;Ljava/lang/String;)Ljava/lang/String;

    .line 277
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-static {p4, v0}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;->a(Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;I)I

    .line 278
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {p4, v0}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;->b(Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;I)I

    .line 279
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    invoke-static {p4, v0}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;->c(Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;I)I

    .line 281
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public clearSources()V
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 106
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 111
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 112
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 118
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;

    .line 119
    new-instance v2, Ljava/io/File;

    invoke-static {v0}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;->a(Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 124
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;

    .line 125
    new-instance v2, Ljava/io/File;

    invoke-static {v0}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;->a(Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_3

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 130
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 131
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_4

    .line 134
    :cond_4
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 135
    return-void
.end method

.method public getBitmap(Lcom/muvee/dsg/text/custom/seqment/Seqment;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 157
    instance-of v0, p1, Lcom/muvee/dsg/text/custom/seqment/TextSegment;

    if-eqz v0, :cond_0

    .line 158
    check-cast p1, Lcom/muvee/dsg/text/custom/seqment/TextSegment;

    .line 159
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 163
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/muvee/dsg/text/custom/seqment/Seqment;->getSourceId()I

    move-result v0

    invoke-virtual {p1}, Lcom/muvee/dsg/text/custom/seqment/Seqment;->getResourceId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->a(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getFontFilePathList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->m:Ljava/util/List;

    return-object v0
.end method

.method public getFontFilePathMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->l:Ljava/util/Map;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->c:I

    return v0
.end method

.method public getResourcePaths()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->h:Ljava/util/List;

    return-object v0
.end method

.method public getSourceDescription(Lcom/muvee/dsg/text/custom/seqment/Seqment;)Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$SourceDescription;
    .locals 2

    .prologue
    .line 345
    invoke-virtual {p1}, Lcom/muvee/dsg/text/custom/seqment/Seqment;->getSourceId()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/muvee/dsg/text/custom/seqment/Seqment;->getSourceId()I

    move-result v0

    iget-object v1, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 346
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->e:Ljava/util/List;

    invoke-virtual {p1}, Lcom/muvee/dsg/text/custom/seqment/Seqment;->getSourceId()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 347
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->n:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$SourceDescription;

    .line 350
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSourceDescriptionMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$SourceDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->n:Ljava/util/Map;

    return-object v0
.end method

.method public getSourcePaths()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 306
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->e:Ljava/util/List;

    return-object v0
.end method

.method public getSourcesSize()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTextBitmapMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/muvee/dsg/text/custom/seqment/TextSegment;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->j:Ljava/util/Map;

    return-object v0
.end method

.method public getTextMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->k:Ljava/util/Map;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->b:I

    return v0
.end method

.method public init()V
    .locals 14

    .prologue
    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 171
    iget-object v2, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;

    .line 173
    :try_start_0
    invoke-static {v6}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;->b(Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;)I

    move-result v2

    invoke-static {v6}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;->c(Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;)I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 174
    new-instance v12, Ljava/io/RandomAccessFile;

    invoke-static {v6}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;->a(Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "rw"

    invoke-direct {v12, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-static {v6}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;->d(Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v2

    .line 176
    invoke-virtual {v9, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 177
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V

    .line 178
    iget-object v2, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->d:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    :catch_0
    move-exception v2

    .line 180
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 184
    :cond_0
    iget-object v2, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->i:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    .line 186
    :try_start_1
    iget-object v2, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->i:Ljava/util/Map;

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;

    move-object v6, v0

    .line 187
    invoke-static {v6}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;->b(Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;)I

    move-result v2

    invoke-static {v6}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;->c(Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;)I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 189
    new-instance v13, Ljava/io/RandomAccessFile;

    invoke-static {v6}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;->a(Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "rw"

    invoke-direct {v13, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-static {v6}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;->d(Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v2

    .line 191
    invoke-virtual {v12, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 192
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V

    .line 193
    iget-object v2, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->g:Ljava/util/Map;

    invoke-interface {v2, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 194
    :catch_1
    move-exception v2

    .line 195
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 199
    :cond_1
    sget-object v2, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->a:Ljava/lang/String;

    const-string v3, "::init: TimeTaken=%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void
.end method

.method public loadSources(Ljava/lang/String;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 203
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 205
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 207
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 208
    new-instance v5, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;

    invoke-direct {v5, p0, v10}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;-><init>(Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$1;)V

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 210
    new-instance v0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$1;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$1;-><init>(Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;)V

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOAD_SOURCE_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 219
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->f:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 222
    :cond_0
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmap/api/os/util/LockRunnable;

    .line 223
    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/os/util/LockRunnable;->get()Ljava/lang/Object;

    goto :goto_1

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 227
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    new-instance v5, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;

    invoke-direct {v5, p0, v10}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;-><init>(Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$1;)V

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 231
    new-instance v0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$2;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$2;-><init>(Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$a;)V

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOAD_SOURCE_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 241
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->i:Ljava/util/Map;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 245
    :cond_3
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 246
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->l:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 249
    :cond_4
    return-void
.end method

.method public setHeight(I)Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;
    .locals 0

    .prologue
    .line 301
    iput p1, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->c:I

    .line 302
    return-object p0
.end method

.method public setTextBitmapMap(Ljava/util/Map;)Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/muvee/dsg/text/custom/seqment/TextSegment;",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;"
        }
    .end annotation

    .prologue
    .line 327
    iput-object p1, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->j:Ljava/util/Map;

    .line 328
    return-object p0
.end method

.method public setTextMap(Ljava/util/Map;)Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;"
        }
    .end annotation

    .prologue
    .line 318
    iput-object p1, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->k:Ljava/util/Map;

    .line 319
    return-object p0
.end method

.method public setWidth(I)Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;
    .locals 0

    .prologue
    .line 292
    iput p1, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->b:I

    .line 293
    return-object p0
.end method

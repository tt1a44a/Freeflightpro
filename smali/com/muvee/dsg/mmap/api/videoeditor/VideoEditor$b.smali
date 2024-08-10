.class Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$b;
.super Ljava/lang/Object;
.source "VideoEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 567
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$b;->a:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$1;)V
    .locals 0

    .prologue
    .line 566
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$b;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$b;->a:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$b;Z)Z
    .locals 0

    .prologue
    .line 566
    iput-boolean p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$b;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$b;)Z
    .locals 1

    .prologue
    .line 566
    iget-boolean v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$b;->b:Z

    return v0
.end method

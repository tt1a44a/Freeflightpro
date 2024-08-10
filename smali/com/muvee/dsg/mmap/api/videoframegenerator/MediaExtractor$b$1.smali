.class Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$b$1;
.super Ljava/lang/Object;
.source "MediaExtractor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$b;-><init>(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/HandlerThread;

.field final synthetic b:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$b;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$b;Landroid/os/HandlerThread;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$b$1;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$b;

    iput-object p2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$b$1;->a:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 101
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$b$1;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$b;

    const-wide/16 v2, 0x0

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v3, v1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$b;->a(JI)J

    .line 102
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$b$1;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 103
    return-void
.end method

.class Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$1$2;
.super Ljava/lang/Object;
.source "Transcoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$1;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$1;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$1$2;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$1$2;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$1;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$1;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->i(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;)V

    .line 87
    return-void
.end method

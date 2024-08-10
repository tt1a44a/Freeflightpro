.class Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer$1;
.super Ljava/lang/Object;
.source "AOSMediaMuxer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->prepare(ILjava/lang/String;Lcom/muvee/dsg/mmap/api/muxer/MediaMuxerCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer$1;->b:Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;

    iput-object p2, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer$1;->b:Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer$1;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->a(Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;Ljava/lang/String;I)V

    .line 52
    return-void
.end method

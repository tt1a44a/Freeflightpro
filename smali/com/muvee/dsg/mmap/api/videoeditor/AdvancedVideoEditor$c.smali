.class Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$c;
.super Ljava/lang/Thread;
.source "AdvancedVideoEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;I)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$c;->a:Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 43
    iput p2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$c;->b:I

    .line 44
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 47
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 49
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$c;->a:Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;)[Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$c;->b:I

    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$c$1;

    invoke-direct {v2, p0}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$c$1;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$c;)V

    aput-object v2, v0, v1

    .line 60
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 61
    return-void
.end method

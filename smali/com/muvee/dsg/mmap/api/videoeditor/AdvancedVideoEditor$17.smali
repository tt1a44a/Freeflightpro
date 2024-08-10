.class Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$17;
.super Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$b;
.source "AdvancedVideoEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->setMusic([Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;

.field final synthetic b:Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;[Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;)V
    .locals 1

    .prologue
    .line 375
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$17;->b:Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;

    iput-object p2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$17;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$b;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$1;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$17;->b:Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$17;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;[Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

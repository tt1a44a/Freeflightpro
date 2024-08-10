.class public Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat;
.super Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect;
.source "FrameEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorFormat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat$Format;
    }
.end annotation


# instance fields
.field private a:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat$Format;


# direct methods
.method public constructor <init>(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat$Format;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect;-><init>()V

    .line 46
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat$Format;->RGBA:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat$Format;

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat$Format;

    .line 54
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat$Format;

    .line 55
    return-void
.end method


# virtual methods
.method public prepare(Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;)V
    .locals 2

    .prologue
    .line 59
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat$Format;

    invoke-static {v1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat$Format;->a(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat$Format;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->surfaceCreated(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

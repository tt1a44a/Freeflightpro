.class public Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate;
.super Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect;
.source "FrameEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ratate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;
    }
.end annotation


# instance fields
.field private a:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;

.field private b:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect;-><init>()V

    .line 80
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;->ROTATE_0:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;

    .line 85
    return-void
.end method

.method public constructor <init>(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;)V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect;-><init>()V

    .line 80
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;->ROTATE_0:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;

    .line 89
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;

    .line 90
    return-void
.end method

.method public constructor <init>(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat;)V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect;-><init>()V

    .line 80
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;->ROTATE_0:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;

    .line 94
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;

    .line 95
    iput-object p2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat;

    .line 96
    return-void
.end method


# virtual methods
.method public prepare(Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;->a:[F

    invoke-virtual {p1, v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->changeTriangleVerticesData([F)V

    .line 101
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat;

    invoke-virtual {v0, p1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat;->prepare(Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;)V

    .line 104
    :cond_0
    return-void
.end method

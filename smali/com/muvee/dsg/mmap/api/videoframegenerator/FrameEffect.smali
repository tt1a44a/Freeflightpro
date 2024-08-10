.class public abstract Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect;
.super Ljava/lang/Object;
.source "FrameEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$CropEffect;,
        Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate;,
        Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$ColorFormat;
    }
.end annotation


# instance fields
.field private a:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNext()Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect;

    return-object v0
.end method

.method public abstract prepare(Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;)V
.end method

.method public setNext(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect;)Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect;
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect;

    return-object p1
.end method

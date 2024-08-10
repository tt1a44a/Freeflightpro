.class Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$2;
.super Ljava/lang/Object;
.source "VmMediaEditor.java"

# interfaces
.implements Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$DrawFrameHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->drawFrames(Ljava/util/List;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;

.field final synthetic b:Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;

.field final synthetic c:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$2;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;

    iput-object p2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$2;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;

    iput-object p3, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$2;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeSetVPMatrix([F[F)V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$2;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$2;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;

    invoke-virtual {v0, p1, p2, v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->setMatrix([F[FLcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;)V

    .line 427
    return-void
.end method

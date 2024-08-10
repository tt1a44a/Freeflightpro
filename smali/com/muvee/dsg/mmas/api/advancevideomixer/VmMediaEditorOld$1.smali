.class Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$1;
.super Ljava/lang/Object;
.source "VmMediaEditorOld.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld;->onRemoveFromOutput(ILcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;Ljava/util/List;Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;

.field final synthetic b:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;

.field final synthetic c:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$1;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld;

    iput-object p2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$1;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;

    iput-object p3, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 341
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$1;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld;

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$1;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;

    iget-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;

    invoke-static {v0, v1, v2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld;->a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;)V

    .line 342
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 336
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$1;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld;

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$1;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;

    iget-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;

    invoke-static {v0, v1, v2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld;->a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;)V

    .line 337
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 332
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 326
    return-void
.end method

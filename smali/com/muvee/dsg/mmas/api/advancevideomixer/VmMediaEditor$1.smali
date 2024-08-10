.class Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$1;
.super Ljava/lang/Object;
.source "VmMediaEditor.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->onRemoveFromOutput(ILcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;Ljava/util/List;Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;

.field final synthetic b:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$1;->d:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;

    iput-object p2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$1;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;

    iput-object p3, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;

    iput-object p4, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$1;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 371
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$1;->d:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$1;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;

    iget-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;

    iget-object v3, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$1;->c:Ljava/util/List;

    invoke-static {v0, v1, v2, v3}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;Ljava/util/List;)V

    .line 372
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 366
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$1;->d:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$1;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;

    iget-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;

    iget-object v3, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$1;->c:Ljava/util/List;

    invoke-static {v0, v1, v2, v3}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;Ljava/util/List;)V

    .line 367
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 362
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 359
    return-void
.end method

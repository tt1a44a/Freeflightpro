.class Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView$6;
.super Ljava/lang/Object;
.source "ChimeraHudView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->initChimeraButtonsOnClickListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView$6;->this$0:Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x8

    .line 207
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView$6;->this$0:Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->access$600(Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView$6;->this$0:Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->access$700(Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView$6;->this$0:Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->access$800(Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 210
    return-void
.end method
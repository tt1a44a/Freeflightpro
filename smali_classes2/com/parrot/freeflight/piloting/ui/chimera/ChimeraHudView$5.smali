.class Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView$5;
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
    .line 194
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView$5;->this$0:Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 197
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView$5;->this$0:Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->access$600(Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 198
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView$5;->this$0:Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->access$700(Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView$5;->this$0:Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 200
    .local v0, "optionsWidth":F
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView$5;->this$0:Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;->access$800(Lcom/parrot/freeflight/piloting/ui/chimera/ChimeraHudView;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    neg-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 201
    return-void
.end method

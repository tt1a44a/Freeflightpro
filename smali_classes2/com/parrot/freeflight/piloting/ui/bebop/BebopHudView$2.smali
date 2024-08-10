.class Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$2;
.super Ljava/lang/Object;
.source "BebopHudView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$2;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 228
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$2;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$2;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$200(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$300(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;Z)V

    .line 229
    return-void

    .line 228
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController$2;
.super Ljava/lang/Object;
.source "BebopUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/FollowMeTargetChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTargetSelected(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 56
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;->access$100(Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;)Lcom/parrot/freeflight/followme/LynxController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/followme/LynxController;->setUserTouch(FF)V

    .line 57
    return-void
.end method

.method public onTargetSelected(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "target"    # Landroid/graphics/RectF;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 61
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;->access$100(Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;)Lcom/parrot/freeflight/followme/LynxController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/followme/LynxController;->smartBoxing(Landroid/graphics/RectF;)V

    .line 62
    return-void
.end method

.method public onTargetUnselected()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;->access$100(Lcom/parrot/freeflight/piloting/ui/bebop/BebopUIController;)Lcom/parrot/freeflight/followme/LynxController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/followme/LynxController;->standBy()V

    .line 67
    return-void
.end method

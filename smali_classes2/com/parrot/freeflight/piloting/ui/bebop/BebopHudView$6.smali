.class Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$6;
.super Ljava/lang/Object;
.source "BebopHudView.java"

# interfaces
.implements Lcom/parrot/freeflight/core/FollowMeManager$Listener;


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
    .line 346
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$6;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 349
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView$6;->this$0:Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;->access$1000(Lcom/parrot/freeflight/piloting/ui/bebop/BebopHudView;I)V

    .line 350
    return-void
.end method

.class Lcom/parrot/freeflight/piloting/ui/PilotingUIController$8;
.super Ljava/lang/Object;
.source "PilotingUIController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->hideSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/PilotingUIController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    .prologue
    .line 468
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$8;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$8;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->showUi(Z)V

    .line 472
    return-void
.end method

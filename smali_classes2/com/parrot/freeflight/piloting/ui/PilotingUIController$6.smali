.class Lcom/parrot/freeflight/piloting/ui/PilotingUIController$6;
.super Ljava/lang/Object;
.source "PilotingUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/Model$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/PilotingUIController;
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
    .line 383
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->updateSettingsView()V

    .line 387
    return-void
.end method

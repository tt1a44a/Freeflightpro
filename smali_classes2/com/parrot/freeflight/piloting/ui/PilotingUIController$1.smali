.class Lcom/parrot/freeflight/piloting/ui/PilotingUIController$1;
.super Ljava/lang/Object;
.source "PilotingUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;


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
    .line 118
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingsButtonClick(Landroid/view/View;I)V
    .locals 1
    .param p1, "settingsButton"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "category"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$1;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->showSettings(Landroid/view/View;I)V

    .line 122
    return-void
.end method

.class Lcom/parrot/freeflight/piloting/ui/PilotingUIController$4;
.super Ljava/lang/Object;
.source "PilotingUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/settings/SettingsView$OnBackButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->initButtonsOnClickListeners()V
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
    .line 211
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$4;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackButtonClick()V
    .locals 2

    .prologue
    .line 215
    const-string v0, "PilotingUIController"

    const-string v1, "click on settings back"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$4;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->onBackPressed()Z

    .line 218
    return-void
.end method

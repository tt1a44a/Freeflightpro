.class Lcom/parrot/freeflight/flightdirector/fragment/DurationFragment$1;
.super Ljava/lang/Object;
.source "DurationFragment.java"

# interfaces
.implements Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar$DurationValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightdirector/fragment/DurationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightdirector/fragment/DurationFragment;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightdirector/fragment/DurationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightdirector/fragment/DurationFragment;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/fragment/DurationFragment$1;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/DurationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDurationChange(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/DurationFragment$1;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/DurationFragment;

    iget-object v0, v0, Lcom/parrot/freeflight/flightdirector/fragment/DurationFragment;->mParamsBuilder:Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->setDuration(I)V

    .line 44
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/DurationFragment$1;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/DurationFragment;

    iget-object v0, v0, Lcom/parrot/freeflight/flightdirector/fragment/DurationFragment;->mFlightDirectorManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->clearHighlights()V

    .line 45
    return-void
.end method

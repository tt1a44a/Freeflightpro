.class Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment$1;
.super Ljava/lang/Object;
.source "FlightDataFragment.java"

# interfaces
.implements Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$OnThemeSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment$1;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeSelected(I)V
    .locals 1
    .param p1, "theme"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment$1;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;

    iget-object v0, v0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mParamsBuilder:Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->setTheme(I)V

    .line 93
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment$1;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->access$000(Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;)V

    .line 94
    return-void
.end method

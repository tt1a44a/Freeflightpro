.class Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment$5;
.super Ljava/lang/Object;
.source "FlightDataFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 129
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment$5;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .prologue
    .line 132
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment$5;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;

    iget-object v0, v0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mParamsBuilder:Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    invoke-virtual {v0, p2}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->setDisplayLogo(Z)V

    .line 133
    return-void
.end method

.class Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$2;
.super Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;
.source "FixedWingSettingsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;->buildInterfaceSettings(Landroid/content/Context;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry",
        "<",
        "Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;",
        "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;

.field final synthetic val$localSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;Ljava/lang/String;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)V
    .locals 6
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "leftButton"    # Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;
    .param p4, "centerButton"    # Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;
    .param p5, "rightButton"    # Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;
    .param p6, "description"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$2;->this$0:Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder;

    iput-object p7, p0, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$2;->val$localSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry;-><init>(Ljava/lang/String;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Lcom/parrot/freeflight/settings/model/RadioButtonSettingsEntry$SettingsRadioButton;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected readValue(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Ljava/lang/Integer;
    .locals 1
    .param p1, "model"    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "settingsModel"    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 127
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->getInterfacePreference()Lcom/parrot/freeflight/piloting/preference/InterfacePreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/preference/InterfacePreference;->getMapType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic readValue(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 123
    check-cast p1, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    check-cast p2, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$2;->readValue(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reset(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;)V
    .locals 0
    .param p1    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 123
    check-cast p1, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    check-cast p2, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$2;->reset(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)V

    return-void
.end method

.method public reset(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;)V
    .locals 2
    .param p1, "model"    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "model2"    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 137
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$2;->val$localSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->getInterfacePreference()Lcom/parrot/freeflight/piloting/preference/InterfacePreference;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/preference/InterfacePreference;->setMapType(I)V

    .line 138
    return-void
.end method

.method public sendValue(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 132
    iget-object v0, p0, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$2;->val$localSettingsModel:Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->getInterfacePreference()Lcom/parrot/freeflight/piloting/preference/InterfacePreference;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/preference/InterfacePreference;->setMapType(I)V

    .line 133
    return-void
.end method

.method public bridge synthetic sendValue(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 123
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/FixedWingSettingsBuilder$2;->sendValue(Ljava/lang/Integer;)V

    return-void
.end method

.class public Lcom/muvee/mvdronecomposer/SettingsParam;
.super Ljava/lang/Object;
.source "SettingsParam.java"


# instance fields
.field private allowLanding:Z

.field private allowTakeOff:Z

.field private dataFilePathArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private disableCredit:Z

.field private disableLocationAndDate:Z

.field private disableMapTrace:Z

.field private disableTelemetry:Z

.field private disableWatermark:Z

.field private duration:I

.field private musicPath:Ljava/lang/String;

.field private musicStartTimeMs:F

.field private styleIndex:I

.field private subtitle:Ljava/lang/String;

.field private themeIndex:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->title:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->subtitle:Ljava/lang/String;

    .line 12
    iput v1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->styleIndex:I

    .line 13
    iput v1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->themeIndex:I

    .line 14
    const/16 v0, 0xa

    iput v0, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->duration:I

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->musicStartTimeMs:F

    .line 17
    iput-boolean v1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->allowTakeOff:Z

    .line 18
    iput-boolean v1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->allowLanding:Z

    .line 19
    iput-boolean v1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->disableCredit:Z

    .line 20
    iput-boolean v1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->disableWatermark:Z

    .line 21
    iput-boolean v1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->disableLocationAndDate:Z

    .line 22
    iput-boolean v1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->disableTelemetry:Z

    .line 23
    iput-boolean v1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->disableMapTrace:Z

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;FZZZZZZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/lang/String;",
            "FZZZZZZZ)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v1, ""

    iput-object v1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->title:Ljava/lang/String;

    .line 11
    const-string v1, ""

    iput-object v1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->subtitle:Ljava/lang/String;

    .line 12
    const/4 v1, 0x0

    iput v1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->styleIndex:I

    .line 13
    const/4 v1, 0x0

    iput v1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->themeIndex:I

    .line 14
    const/16 v1, 0xa

    iput v1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->duration:I

    .line 16
    const/4 v1, 0x0

    iput v1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->musicStartTimeMs:F

    .line 17
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->allowTakeOff:Z

    .line 18
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->allowLanding:Z

    .line 19
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->disableCredit:Z

    .line 20
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->disableWatermark:Z

    .line 21
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->disableLocationAndDate:Z

    .line 22
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->disableTelemetry:Z

    .line 23
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->disableMapTrace:Z

    .line 29
    invoke-virtual {p0, p1}, Lcom/muvee/mvdronecomposer/SettingsParam;->setDataFilePathArray(Ljava/util/ArrayList;)V

    .line 30
    invoke-virtual {p0, p2}, Lcom/muvee/mvdronecomposer/SettingsParam;->setTitle(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0, p3}, Lcom/muvee/mvdronecomposer/SettingsParam;->setSubtitle(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, p4}, Lcom/muvee/mvdronecomposer/SettingsParam;->setStyleIndex(I)V

    .line 33
    invoke-virtual {p0, p5}, Lcom/muvee/mvdronecomposer/SettingsParam;->setThemeIndex(I)V

    .line 34
    invoke-virtual {p0, p6}, Lcom/muvee/mvdronecomposer/SettingsParam;->setDuration(I)V

    .line 35
    invoke-virtual {p0, p7}, Lcom/muvee/mvdronecomposer/SettingsParam;->setMusicPath(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, p8}, Lcom/muvee/mvdronecomposer/SettingsParam;->setMusicStartTimeMs(F)V

    .line 37
    invoke-virtual {p0, p9}, Lcom/muvee/mvdronecomposer/SettingsParam;->setAllowTakeOff(Z)V

    .line 38
    invoke-virtual {p0, p10}, Lcom/muvee/mvdronecomposer/SettingsParam;->setAllowLanding(Z)V

    .line 39
    invoke-virtual {p0, p11}, Lcom/muvee/mvdronecomposer/SettingsParam;->setDisableCredit(Z)V

    .line 40
    invoke-virtual {p0, p12}, Lcom/muvee/mvdronecomposer/SettingsParam;->setDisableWatermark(Z)V

    .line 41
    invoke-virtual {p0, p13}, Lcom/muvee/mvdronecomposer/SettingsParam;->setDisableLocationAndDate(Z)V

    .line 42
    move/from16 v0, p14

    invoke-virtual {p0, v0}, Lcom/muvee/mvdronecomposer/SettingsParam;->setDisableTelemetry(Z)V

    .line 43
    move/from16 v0, p15

    invoke-virtual {p0, v0}, Lcom/muvee/mvdronecomposer/SettingsParam;->setDisableMapTrace(Z)V

    .line 44
    return-void
.end method


# virtual methods
.method public getDataFilePathArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->dataFilePathArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->duration:I

    return v0
.end method

.method public getMusicPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->musicPath:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicStartTimeMs()F
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->musicStartTimeMs:F

    return v0
.end method

.method public getStyleIndex()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->styleIndex:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getThemeIndex()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->themeIndex:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isAllowLanding()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->allowLanding:Z

    return v0
.end method

.method public isAllowTakeOff()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->allowTakeOff:Z

    return v0
.end method

.method public isDisableCredit()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->disableCredit:Z

    return v0
.end method

.method public isDisableLocationAndDate()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->disableLocationAndDate:Z

    return v0
.end method

.method public isDisableMapTrace()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->disableMapTrace:Z

    return v0
.end method

.method public isDisableTelemetry()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->disableTelemetry:Z

    return v0
.end method

.method public isDisableWatermark()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->disableWatermark:Z

    return v0
.end method

.method public setAllowLanding(Z)V
    .locals 0

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->allowLanding:Z

    .line 114
    return-void
.end method

.method public setAllowTakeOff(Z)V
    .locals 0

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->allowTakeOff:Z

    .line 107
    return-void
.end method

.method public setDataFilePathArray(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    iput-object p1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->dataFilePathArray:Ljava/util/ArrayList;

    .line 51
    return-void
.end method

.method public setDisableCredit(Z)V
    .locals 0

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->disableCredit:Z

    .line 121
    return-void
.end method

.method public setDisableLocationAndDate(Z)V
    .locals 0

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->disableLocationAndDate:Z

    .line 135
    return-void
.end method

.method public setDisableMapTrace(Z)V
    .locals 0

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->disableMapTrace:Z

    .line 149
    return-void
.end method

.method public setDisableTelemetry(Z)V
    .locals 0

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->disableTelemetry:Z

    .line 142
    return-void
.end method

.method public setDisableWatermark(Z)V
    .locals 0

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->disableWatermark:Z

    .line 128
    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .prologue
    .line 85
    iput p1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->duration:I

    .line 86
    return-void
.end method

.method public setMusicPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->musicPath:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setMusicStartTimeMs(F)V
    .locals 0

    .prologue
    .line 99
    iput p1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->musicStartTimeMs:F

    .line 100
    return-void
.end method

.method public setStyleIndex(I)V
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->styleIndex:I

    .line 72
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->subtitle:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setThemeIndex(I)V
    .locals 0

    .prologue
    .line 78
    iput p1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->themeIndex:I

    .line 79
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->title:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "::SettingsParam:: title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subTitle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->subtitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", styleIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->styleIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", themeIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->themeIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", musicPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->musicPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", musicStartTimeMs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->musicStartTimeMs:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowTakeOff: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->allowTakeOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowLanding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->allowLanding:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", disableCredit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->disableCredit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", disableWatermark: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->disableWatermark:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", disableLocationAndDate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->disableLocationAndDate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", disableTelemetry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->disableTelemetry:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", disableMapTrace: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/muvee/mvdronecomposer/SettingsParam;->disableMapTrace:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 161
    :goto_0
    return-object v0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    const/4 v0, 0x0

    goto :goto_0
.end method

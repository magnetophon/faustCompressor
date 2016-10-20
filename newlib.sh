#!/usr/bin/env bash


old2newLib(){
echo "start converting $1"

# sed -i '/import.*/a \
# import("stdfaust.lib");
# ' shelfMultiBand.lib


sed -i "s|import *(\"effect.lib\");|import(\"stdfaust.lib\");|" "$1"
sed -i "s|import *(\"filter.lib\");|import(\"stdfaust.lib\");|" "$1"
sed -i "s|import *(\"hoa.lib\");|import(\"stdfaust.lib\");|" "$1"
sed -i "s|import *(\"instrument.lib\");|import(\"stdfaust.lib\");|" "$1"
sed -i "s|import *(\"math.lib\");|import(\"stdfaust.lib\");|" "$1"
sed -i "s|import *(\"oscillator.lib\");|import(\"stdfaust.lib\");|" "$1"
sed -i "s|import *(\"reduce.lib\");|import(\"stdfaust.lib\");|" "$1"

echo "$(uniq $1)" > $1


# analyzer.lib
sed -i "s|\bamp_follower\b|an.amp_follower|g" "$1"
sed -i "s|\bamp_follower_ud\b|an.amp_follower_ud|g" "$1"
sed -i "s|\bamp_follower_ar\b|an.amp_follower_ar|g" "$1"
sed -i "s|\bmth_octave_analyzer\b|an.mth_octave_analyzer|g" "$1"
sed -i "s|\bmth_octave_spectral_level6e\b|an.mth_octave_spectral_level6e|g" "$1"
sed -i "s|\bthird_octave_analyzer\b|an.third_octave_analyzer|g" "$1"
sed -i "s|\bhalf_octave_analyzer\b|an.half_octave_analyzer|g" "$1"
sed -i "s|\bthird_octave_filterbank\b|an.third_octave_filterbank|g" "$1"
sed -i "s|\bhalf_octave_filterbank\b|an.half_octave_filterbank|g" "$1"
sed -i "s|\banalyzer\b|an.analyzer|g" "$1"

# basic.lib
sed -i "s|\bsamp2sec\b|ba.samp2sec|g" "$1"
sed -i "s|\bsec2samp\b|ba.sec2samp|g" "$1"
sed -i "s|\bdb2linear\b|ba.db2linear|g" "$1"
sed -i "s|\blinear2db\b|ba.linear2db|g" "$1"
sed -i "s|\blin2LogGain\b|ba.lin2LogGain|g" "$1"
sed -i "s|\blog2LinGain\b|ba.log2LinGain|g" "$1"
sed -i "s|\btau2pole\b|ba.tau2pole|g" "$1"
sed -i "s|\bpole2tau\b|ba.pole2tau|g" "$1"
sed -i "s|\bmidikey2hz\b|ba.midikey2hz|g" "$1"
sed -i "s|\bpianokey2hz\b|ba.pianokey2hz|g" "$1"
sed -i "s|\bhz2pianokey\b|ba.hz2pianokey|g" "$1"
sed -i "s|\bcountdown\b|ba.countdown|g" "$1"
sed -i "s|\bcountup\b|ba.countup|g" "$1"
sed -i "s|\bsweep\b|ba.sweep|g" "$1"
# too general:
# sed -i "s|\btime\b|ba.time|g" "$1"
sed -i "s|\btempo\b|ba.tempo|g" "$1"
sed -i "s|\bperiod\b|ba.period|g" "$1"
sed -i "s|\bpulse\b|ba.pulse|g" "$1"
sed -i "s|\bpulsen\b|ba.pulsen|g" "$1"
sed -i "s|\bbeat\b|ba.beat|g" "$1"
sed -i "s|\bpulse_countup\b|ba.pulse_countup|g" "$1"
sed -i "s|\bpulse_countdown\b|ba.pulse_countdown|g" "$1"
sed -i "s|\bpulse_countup_loop\b|ba.pulse_countup_loop|g" "$1"
sed -i "s|\bpulse_countdown_loop\b|ba.pulse_countdown_loop|g" "$1"
sed -i "s|\bcount\b|ba.count|g" "$1"
sed -i "s|\btake\b|ba.take|g" "$1"
sed -i "s|\bsubseq\b|ba.subseq|g" "$1"
sed -i "s|\bif\b|ba.if|g" "$1"
sed -i "s|\bselector\b|ba.selector|g" "$1"
sed -i "s|\bselectn\b|ba.selectn|g" "$1"
sed -i "s|\bselect2stereo\b|ba.select2stereo|g" "$1"
sed -i "s|\blatch\b|ba.latch|g" "$1"
sed -i "s|\bsAndH\b|ba.sAndH|g" "$1"
sed -i "s|\bpeakhold\b|ba.peakhold|g" "$1"
sed -i "s|\bpeakholder\b|ba.peakholder|g" "$1"
sed -i "s|\bimpulsify\b|ba.impulsify|g" "$1"
sed -i "s|\bautomat\b|ba.automat|g" "$1"
sed -i "s|\bbypass1\b|ba.bypass1|g" "$1"
sed -i "s|\bbypass2\b|ba.bypass2|g" "$1"
sed -i "s|\btoggle\b|ba.toggle|g" "$1"
sed -i "s|\bon_and_off\b|ba.on_and_off|g" "$1"
sed -i "s|\bselectoutn\b|ba.selectoutn|g" "$1"
# compressor.lib
sed -i "s|\bcompressor_mono\b|co.compressor_mono|g" "$1"
sed -i "s|\bcompressor_stereo\b|co.compressor_stereo|g" "$1"
sed -i "s|\blimiter_1176_R4_mono\b|co.limiter_1176_R4_mono|g" "$1"
sed -i "s|\blimiter_1176_R4_stereo\b|co.limiter_1176_R4_stereo|g" "$1"
# delay.lib
sed -i "s|\bdelay\b|de.delay|g" "$1"
sed -i "s|\bfdelay\b|de.fdelay|g" "$1"
sed -i "s|\bsdelay\b|de.sdelay|g" "$1"
sed -i "s|\bfdelaylti\b|de.fdelaylti|g" "$1"
sed -i "s|\bfdelayltv\b|de.fdelayltv|g" "$1"
sed -i "s|\bfdelay\b|de.fdelay|g" "$1"
# demo.lib
sed -i "s|\bmth_octave_spectral_level_demo\b|dm.mth_octave_spectral_level_demo|g" "$1"
sed -i "s|\bparametric_eq_demo\b|dm.parametric_eq_demo|g" "$1"
sed -i "s|\bspectral_tilt_demo\b|dm.spectral_tilt_demo|g" "$1"
sed -i "s|\bmth_octave_filterbank_demo\b|dm.mth_octave_filterbank_demo|g" "$1"
sed -i "s|\bfilterbank_demo\b|dm.filterbank_demo|g" "$1"
sed -i "s|\bcubicnl_demo\b|dm.cubicnl_demo|g" "$1"
sed -i "s|\bgate_demo\b|dm.gate_demo|g" "$1"
sed -i "s|\bcompressor_demo\b|dm.compressor_demo|g" "$1"
sed -i "s|\bexciter\b|dm.exciter|g" "$1"
sed -i "s|\bmoog_vcf_demo\b|dm.moog_vcf_demo|g" "$1"
sed -i "s|\bwah4_demo\b|dm.wah4_demo|g" "$1"
sed -i "s|\bcrybaby_demo\b|dm.crybaby_demo|g" "$1"
sed -i "s|\bvocoder_demo\b|dm.vocoder_demo|g" "$1"
sed -i "s|\bflanger_demo\b|dm.flanger_demo|g" "$1"
sed -i "s|\bphaser2_demo\b|dm.phaser2_demo|g" "$1"
sed -i "s|\bfreeverb_demo\b|dm.freeverb_demo|g" "$1"
sed -i "s|\bstereo_reverb_tester\b|dm.stereo_reverb_tester|g" "$1"
sed -i "s|\bfdnrev0_demo\b|dm.fdnrev0_demo|g" "$1"
sed -i "s|\bzita_rev_fdn_demo\b|dm.zita_rev_fdn_demo|g" "$1"
sed -i "s|\bzita_rev1\b|dm.zita_rev1|g" "$1"
sed -i "s|\bsawtooth_demo\b|dm.sawtooth_demo|g" "$1"
sed -i "s|\bvirtual_analog_oscillator_demo\b|dm.virtual_analog_oscillator_demo|g" "$1"
sed -i "s|\boscrs_demo\b|dm.oscrs_demo|g" "$1"
# envelope.lib
sed -i "s|\bsmoothEnvelope\b|en.smoothEnvelope|g" "$1"
sed -i "s|\bar\b|en.ar|g" "$1"
sed -i "s|\basr\b|en.asr|g" "$1"
sed -i "s|\badsr\b|en.adsr|g" "$1"
# filter.lib
sed -i "s|\bzero\b|fi.zero|g" "$1"
sed -i "s|\bpole\b|fi.pole|g" "$1"
sed -i "s|\bintegrator\b|fi.integrator|g" "$1"
sed -i "s|\bdcblockerat\b|fi.dcblockerat|g" "$1"
sed -i "s|\bdcblocker\b|fi.dcblocker|g" "$1"
sed -i "s|\bff_comb\b|fi.ff_comb|g" "$1"
sed -i "s|\bff_fcomb\b|fi.ff_fcomb|g" "$1"
sed -i "s|\bffcombfilter\b|fi.ffcombfilter|g" "$1"
sed -i "s|\bfb_comb\b|fi.fb_comb|g" "$1"
sed -i "s|\bfb_fcomb\b|fi.fb_fcomb|g" "$1"
sed -i "s|\brev1\b|fi.rev1|g" "$1"
sed -i "s|\bfbcombfilter\b|fi.fbcombfilter|g" "$1"
sed -i "s|\bffbcombfilterf\b|fi.ffbcombfilterf|g" "$1"
sed -i "s|\ballpass_comb\b|fi.allpass_comb|g" "$1"
sed -i "s|\ballpass_fcombf\b|fi.allpass_fcombf|g" "$1"
sed -i "s|\brev2\b|fi.rev2|g" "$1"
sed -i "s|\ballpass_fcomb5\b|fi.allpass_fcomb5|g" "$1"
sed -i "s|\ballpass_fcomb1af\b|fi.allpass_fcomb1af|g" "$1"
sed -i "s|\biir\b|fi.iir|g" "$1"
sed -i "s|\bfir\b|fi.fir|g" "$1"
sed -i "s|\bconv\b|fi.conv|g" "$1"
sed -i "s|\bconvNf\b|fi.convNf|g" "$1"
sed -i "s|\btf1\b|fi.tf1|g" "$1"
sed -i "s|\btf2\b|fi.tf2|g" "$1"
sed -i "s|\btf3f\b|fi.tf3f|g" "$1"
sed -i "s|\bnotchw\b|fi.notchw|g" "$1"
sed -i "s|\btf21\b|fi.tf21|g" "$1"
sed -i "s|\btf22\b|fi.tf22|g" "$1"
sed -i "s|\btf22t\b|fi.tf22t|g" "$1"
sed -i "s|\btf21tf\b|fi.tf21tf|g" "$1"
sed -i "s|\bav2sv\b|fi.av2sv|g" "$1"
sed -i "s|\bbvav2nuv\b|fi.bvav2nuv|g" "$1"
sed -i "s|\biir_lat2\b|fi.iir_lat2|g" "$1"
sed -i "s|\ballpassnt\b|fi.allpassnt|g" "$1"
sed -i "s|\biir_kl\b|fi.iir_kl|g" "$1"
sed -i "s|\ballpassnklt\b|fi.allpassnklt|g" "$1"
sed -i "s|\biir_lat1\b|fi.iir_lat1|g" "$1"
sed -i "s|\ballpassn1mt\b|fi.allpassn1mt|g" "$1"
sed -i "s|\biir_nl\b|fi.iir_nl|g" "$1"
sed -i "s|\ballpassnnlt\b|fi.allpassnnlt|g" "$1"
sed -i "s|\btf2np\b|fi.tf2np|g" "$1"
sed -i "s|\bwgr\b|fi.wgr|g" "$1"
sed -i "s|\bnlf2\b|fi.nlf2|g" "$1"
sed -i "s|\bapnl\b|fi.apnl|g" "$1"
sed -i "s|\ballpassn\b|fi.allpassn|g" "$1"
sed -i "s|\ballpassnn\b|fi.allpassnn|g" "$1"
sed -i "s|\ballpasskl\b|fi.allpasskl|g" "$1"
sed -i "s|\ballpass1m\b|fi.allpass1m|g" "$1"
sed -i "s|\btf2s\b|fi.tf2s|g" "$1"
sed -i "s|\btf2snp\b|fi.tf2snp|g" "$1"
sed -i "s|\btf3slf\b|fi.tf3slf|g" "$1"
sed -i "s|\btf1s\b|fi.tf1s|g" "$1"
sed -i "s|\btf2sb\b|fi.tf2sb|g" "$1"
sed -i "s|\btf1sb\b|fi.tf1sb|g" "$1"
sed -i "s|\bresonlp\b|fi.resonlp|g" "$1"
sed -i "s|\bresonhp\b|fi.resonhp|g" "$1"
sed -i "s|\bresonbp\b|fi.resonbp|g" "$1"
sed -i "s|\blowpass\b|fi.lowpass|g" "$1"
sed -i "s|\bhighpass\b|fi.highpass|g" "$1"
sed -i "s|\blowpass0_highpass1\b|fi.lowpass0_highpass1|g" "$1"
sed -i "s|\bhighpass_plus_lowpass\b|fi.highpass_plus_lowpass|g" "$1"
sed -i "s|\bhighpass_minus_lowpass\b|fi.highpass_minus_lowpass|g" "$1"
sed -i "s|\blowpass3e\b|fi.lowpass3e|g" "$1"
sed -i "s|\blowpass6e\b|fi.lowpass6e|g" "$1"
sed -i "s|\bhighpass3e\b|fi.highpass3e|g" "$1"
sed -i "s|\bhighpass6e\b|fi.highpass6e|g" "$1"
sed -i "s|\bbandpass\b|fi.bandpass|g" "$1"
sed -i "s|\bbandstop\b|fi.bandstop|g" "$1"
sed -i "s|\bbandpass6e\b|fi.bandpass6e|g" "$1"
sed -i "s|\bbandpass12e\b|fi.bandpass12e|g" "$1"
sed -i "s|\blow_shelf\b|fi.low_shelf|g" "$1"
sed -i "s|\blowshelf_other_freq\b|fi.lowshelf_other_freq|g" "$1"
sed -i "s|\bhigh_shelf\b|fi.high_shelf|g" "$1"
sed -i "s|\bhighshelf_other_freq\b|fi.highshelf_other_freq|g" "$1"
sed -i "s|\bpeak_eq\b|fi.peak_eq|g" "$1"
sed -i "s|\bpeak_eq_cq\b|fi.peak_eq_cq|g" "$1"
sed -i "s|\bpeak_eq_rm\b|fi.peak_eq_rm|g" "$1"
sed -i "s|\bspectral_tilt\b|fi.spectral_tilt|g" "$1"
sed -i "s|\blevelfilter\b|fi.levelfilter|g" "$1"
sed -i "s|\blevelfilterN\b|fi.levelfilterN|g" "$1"
sed -i "s|\bmth_octave_filterbank\b|fi.mth_octave_filterbank|g" "$1"
sed -i "s|\bfilterbank\b|fi.filterbank|g" "$1"
sed -i "s|\bfilterbanki\b|fi.filterbanki|g" "$1"
# hoa.lib
sed -i "s|\bencoder\b|ho.encoder|g" "$1"
sed -i "s|\bdecoder\b|ho.decoder|g" "$1"
sed -i "s|\bdecoderStereo\b|ho.decoderStereo|g" "$1"
sed -i "s|\boptimBasic\b|ho.optimBasic|g" "$1"
sed -i "s|\boptimMaxRe\b|ho.optimMaxRe|g" "$1"
sed -i "s|\boptimInPhase\b|ho.optimInPhase|g" "$1"
sed -i "s|\bwider\b|ho.wider|g" "$1"
sed -i "s|\bmap\b|ho.map|g" "$1"
sed -i "s|\brotate\b|ho.rotate|g" "$1"
# math.lib
sed -i "s|\bneg\b|ma.neg|g" "$1"
sed -i "s|\bsub\b|ma.sub|g" "$1"
sed -i "s|\binv\b|ma.inv|g" "$1"
sed -i "s|\bcbrt\b|ma.cbrt|g" "$1"
sed -i "s|\bhypot\b|ma.hypot|g" "$1"
sed -i "s|\bldexp\b|ma.ldexp|g" "$1"
sed -i "s|\bscalb\b|ma.scalb|g" "$1"
sed -i "s|\blog1p\b|ma.log1p|g" "$1"
sed -i "s|\blogb\b|ma.logb|g" "$1"
sed -i "s|\bilogb\b|ma.ilogb|g" "$1"
sed -i "s|\blog2\b|ma.log2|g" "$1"
sed -i "s|\bexpm1\b|ma.expm1|g" "$1"
sed -i "s|\bacosh\b|ma.acosh|g" "$1"
sed -i "s|\basinh\b|ma.asinh|g" "$1"
sed -i "s|\batanh\b|ma.atanh|g" "$1"
sed -i "s|\bsinh\b|ma.sinh|g" "$1"
sed -i "s|\bcosh\b|ma.cosh|g" "$1"
sed -i "s|\btanh\b|ma.tanh|g" "$1"
sed -i "s|\berf\b|ma.erf|g" "$1"
sed -i "s|\berfc\b|ma.erfc|g" "$1"
sed -i "s|\bgamma\b|ma.gamma|g" "$1"
sed -i "s|\blgamma\b|ma.lgamma|g" "$1"
sed -i "s|\bfabs\b|ma.fabs|g" "$1"
sed -i "s|\bfmax\b|ma.fmax|g" "$1"
sed -i "s|\bfmin\b|ma.fmin|g" "$1"
sed -i "s|\bnp2\b|ma.np2|g" "$1"
sed -i "s|\bfrac\b|ma.frac|g" "$1"
sed -i "s|\bisnan\b|ma.isnan|g" "$1"
sed -i "s|\bchebychev\b|ma.chebychev|g" "$1"
sed -i "s|\bchebychevpoly\b|ma.chebychevpoly|g" "$1"
sed -i "s|\bdiffn\b|ma.diffn|g" "$1"
sed -i "s|\bSR\b|ma.SR|g" "$1"
# miscefect.lib
sed -i "s|\bcubicnl\b|ef.cubicnl|g" "$1"
sed -i "s|\bgate_mono\b|ef.gate_mono|g" "$1"
sed -i "s|\bgate_stereo\b|ef.gate_stereo|g" "$1"
sed -i "s|\bspeakerbp\b|ef.speakerbp|g" "$1"
sed -i "s|\bpiano_dispersion_filter\b|ef.piano_dispersion_filter|g" "$1"
sed -i "s|\bstereo_width\b|ef.stereo_width|g" "$1"
sed -i "s|\becho\b|ef.echo|g" "$1"
sed -i "s|\btranspose\b|ef.transpose|g" "$1"
sed -i "s|\bmesh_square\b|ef.mesh_square|g" "$1"
# miscoscillator.lib
sed -i "s|\bsinwaveform\b|os.sinwaveform|g" "$1"
sed -i "s|\bcoswaveform\b|os.coswaveform|g" "$1"
sed -i "s|\bphasor\b|os.phasor|g" "$1"
sed -i "s|\boscsin\b|os.oscsin|g" "$1"
sed -i "s|\bosc\b|os.osc|g" "$1"
sed -i "s|\boscos\b|os.oscos|g" "$1"
sed -i "s|\boscp\b|os.oscp|g" "$1"
sed -i "s|\bosci\b|os.osci|g" "$1"
sed -i "s|\blf_imptrain\b|os.lf_imptrain|g" "$1"
sed -i "s|\blf_pulsetrainpos\b|os.lf_pulsetrainpos|g" "$1"
sed -i "s|\blf_squarewavepos\b|os.lf_squarewavepos|g" "$1"
sed -i "s|\blf_squarewave\b|os.lf_squarewave|g" "$1"
sed -i "s|\blf_trianglepos\b|os.lf_trianglepos|g" "$1"
sed -i "s|\blf_rawsaw\b|os.lf_rawsaw|g" "$1"
sed -i "s|\blf_sawpos\b|os.lf_sawpos|g" "$1"
sed -i "s|\blf_sawpos_phase\b|os.lf_sawpos_phase|g" "$1"
sed -i "s|\bsaw1\b|os.saw1|g" "$1"
sed -i "s|\bsawN\b|os.sawN|g" "$1"
sed -i "s|\bsawNp\b|os.sawNp|g" "$1"
sed -i "s|\bsaw2dpw\b|os.saw2dpw|g" "$1"
sed -i "s|\bsaw2\b|os.saw2|g" "$1"
sed -i "s|\bsaw3\b|os.saw3|g" "$1"
sed -i "s|\bsaw4\b|os.saw4|g" "$1"
sed -i "s|\bsaw5\b|os.saw5|g" "$1"
sed -i "s|\bsaw6\b|os.saw6|g" "$1"
sed -i "s|\bsawtooth\b|os.sawtooth|g" "$1"
sed -i "s|\bsaw2f2\b|os.saw2f2|g" "$1"
sed -i "s|\bsaw2f4\b|os.saw2f4|g" "$1"
sed -i "s|\bpulsetrainN\b|os.pulsetrainN|g" "$1"
sed -i "s|\bpulsetrain\b|os.pulsetrain|g" "$1"
sed -i "s|\bsquareN\b|os.squareN|g" "$1"
sed -i "s|\bsquare\b|os.square|g" "$1"
sed -i "s|\bimptrainN\b|os.imptrainN|g" "$1"
sed -i "s|\bimptrain\b|os.imptrain|g" "$1"
sed -i "s|\btriangleN\b|os.triangleN|g" "$1"
sed -i "s|\btriangle\b|os.triangle|g" "$1"
sed -i "s|\boscb\b|os.oscb|g" "$1"
sed -i "s|\boscr\b|os.oscr|g" "$1"
sed -i "s|\boscrs\b|os.oscrs|g" "$1"
sed -i "s|\boscs\b|os.oscs|g" "$1"
sed -i "s|\boscw\b|os.oscw|g" "$1"
sed -i "s|\boscwq\b|os.oscwq|g" "$1"
sed -i "s|\boscwc\b|os.oscwc|g" "$1"
sed -i "s|\boscws\b|os.oscws|g" "$1"
# noise.lib
sed -i "s|\bnoise\b|no.noise|g" "$1"
sed -i "s|\bmultirandom\b|no.multirandom|g" "$1"
sed -i "s|\bmultinoise\b|no.multinoise|g" "$1"
sed -i "s|\bnoises\b|no.noises|g" "$1"
sed -i "s|\bpink_noise\b|no.pink_noise|g" "$1"
sed -i "s|\bpink_noise_vm\b|no.pink_noise_vm|g" "$1"
sed -i "s|\blfnoise\b|no.lfnoise|g" "$1"
sed -i "s|\blfnoise0\b|no.lfnoise0|g" "$1"
sed -i "s|\blfnoiseN\b|no.lfnoiseN|g" "$1"
# phafla.lib
sed -i "s|\bflanger_mono\b|pf.flanger_mono|g" "$1"
sed -i "s|\bflanger_stereo\b|pf.flanger_stereo|g" "$1"
sed -i "s|\bphaser2_mono\b|pf.phaser2_mono|g" "$1"
sed -i "s|\bphaser2_stereo\b|pf.phaser2_stereo|g" "$1"
# pm.lib
sed -i "s|\bchain\b|pm.chain|g" "$1"
sed -i "s|\binput\b|pm.input|g" "$1"
sed -i "s|\boutput\b|pm.output|g" "$1"
sed -i "s|\bterminations\b|pm.terminations|g" "$1"
sed -i "s|\bfullTerminations\b|pm.fullTerminations|g" "$1"
sed -i "s|\bleftTermination\b|pm.leftTermination|g" "$1"
sed -i "s|\brightTermination\b|pm.rightTermination|g" "$1"
sed -i "s|\bwaveguide\b|pm.waveguide|g" "$1"
sed -i "s|\bidealString\b|pm.idealString|g" "$1"
# reverb.lib
sed -i "s|\bjcrev\b|re.jcrev|g" "$1"
sed -i "s|\bsatrev\b|re.satrev|g" "$1"
sed -i "s|\bmono_freeverb\b|re.mono_freeverb|g" "$1"
sed -i "s|\bstereo_freeverb\b|re.stereo_freeverb|g" "$1"
sed -i "s|\bfdnrev0\b|re.fdnrev0|g" "$1"
sed -i "s|\bzita_rev_fdn\b|re.zita_rev_fdn|g" "$1"
sed -i "s|\bzita_rev1_stereo\b|re.zita_rev1_stereo|g" "$1"
sed -i "s|\bzita_rev1_ambi\b|re.zita_rev1_ambi|g" "$1"
# route.lib
sed -i "s|\bcross\b|ro.cross|g" "$1"
sed -i "s|\bcrossnn\b|ro.crossnn|g" "$1"
sed -i "s|\bcrossn1\b|ro.crossn1|g" "$1"
sed -i "s|\binterleave\b|ro.interleave|g" "$1"
sed -i "s|\bbutterfly\b|ro.butterfly|g" "$1"
sed -i "s|\bhadamard\b|ro.hadamard|g" "$1"
sed -i "s|\brecursivize\b|ro.recursivize|g" "$1"
# signal.lib
sed -i "s|\bbus\b|si.bus|g" "$1"
sed -i "s|\bbus2\b|(_,_)|g" "$1"
sed -i "s|\bblock\b|si.block|g" "$1"
sed -i "s|\binterpolate\b|si.interpolate|g" "$1"
sed -i "s|\bsmooth\b|si.smooth|g" "$1"
sed -i "s|\bsmoo\b|si.smoo|g" "$1"
sed -i "s|\bpolySmooth\b|si.polySmooth|g" "$1"
sed -i "s|\bbsmooth\b|si.bsmooth|g" "$1"
sed -i "s|\blag_ud\b|si.lag_ud|g" "$1"
sed -i "s|\bdot\b|si.dot|g" "$1"
# spat.lib
sed -i "s|\bpanner\b|sp.panner|g" "$1"
sed -i "s|\bspat\b|sp.spat|g" "$1"
sed -i "s|\bstereoize\b|sp.stereoize|g" "$1"
# synth.lib
sed -i "s|\bpopFilterPerc\b|sy.popFilterPerc|g" "$1"
sed -i "s|\bdubDub\b|sy.dubDub|g" "$1"
sed -i "s|\bsawTrombone\b|sy.sawTrombone|g" "$1"
sed -i "s|\bcombString\b|sy.combString|g" "$1"
sed -i "s|\badditiveDrum\b|sy.additiveDrum|g" "$1"
sed -i "s|\badditiveDrum\b|sy.additiveDrum|g" "$1"
# vaeffect.lib
sed -i "s|\bmoog_vcf\b|ve.moog_vcf|g" "$1"
sed -i "s|\bmoog_vcf_2b\b|ve.moog_vcf_2b|g" "$1"
sed -i "s|\bwah4\b|ve.wah4|g" "$1"
sed -i "s|\bautowah\b|ve.autowah|g" "$1"
sed -i "s|\bcrybaby\b|ve.crybaby|g" "$1"
sed -i "s|\bvocoder\b|ve.vocoder|g" "$1"

echo "done converting $1"
}
export -f old2newLib

find . -name '*.lib' -or -name '*.dsp' | xargs -n 1 -P 10 -I {} bash -c 'old2newLib "{}"'
# bash -c 'old2newLib "$@"' _ {}
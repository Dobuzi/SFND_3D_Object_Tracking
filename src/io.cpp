#include "io.hpp"

using namespace std;

void parseArgs(map<string, string> &args, int argc, const char *argv[])
{
    args = {{"--detector", "BRISK"},        // SHITOMASI, HARRIS, FAST, BRISK, ORB, AKAZE, SIFT
            {"--descriptor", "BRISK"},      // BRISK, BRIEF, ORB, FREAK, AKAZE, SIFT
            {"--matcher", "MAT_FLANN"},     // MAT_BF, MAT_FLANN
            {"--matchDesc", "DES_BINARY"},  // DES_BINARY, DES_HOG
            {"--selector", "SEL_KNN"},      // SEL_NN, SEL_KNN
            {"--bVis", "false"},            // true, false
            {"--bVis3D", "false"},          // true, false
            {"--bVisDetector", "false"},    // true, false
            {"--bVisMatcher", "false"},     // true, false
            {"--bLimitKpts", "false"},       // true, false
            {"--bVisFinal", "true"}};       // true, false

    for (int i = 1; i < argc; i++)
    {
        if (args.find(argv[i]) != args.end())
        {
            args[argv[i]] = argv[i+1];
        }
    }
}